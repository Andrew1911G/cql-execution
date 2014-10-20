typeIsArray = Array.isArray || ( value ) -> return {}.toString.call( value ) is '[object Array]'

functionExists = (name) -> eval("typeof #{name}") is "function"

constructByName = (name, json) -> eval("new #{name}(json)")

build = (json) ->
  if not json? then return json

  if (typeIsArray json)
    return (build child for child in json)

  if json.type is "FunctionRef" then new buildFunctionRef(json)
  else if json.type is "Literal" then buildLiteral(json)
  else if functionExists(json.type) then constructByName(json.type, json)
  else null

buildFunctionRef = (json) ->
  if functionExists("#{json.name}FunctionRef") then constructByName("#{json.name}FunctionRef", json)
  else new FunctionRef(json)

buildLiteral = (json) ->
  switch(json.valueType)
    when "{http://www.w3.org/2001/XMLSchema}bool" then new BooleanLiteral(json)
    when "{http://www.w3.org/2001/XMLSchema}int" then new IntegerLiteral(json)
    when "{http://www.w3.org/2001/XMLSchema}string" then new StringLiteral(json)
    else new Literal(json)

# Key Classes

class Library
  constructor: (json) ->
    @parameters = {}
    for param in json.library.parameters?.def ? []
      @parameters[param.name] = new ParameterDef(param)
    @valueSets = {}
    for valueSet in json.library.valueSets?.def ? []
      @valueSets[valueSet.name] = new ValueSetDef(valueSet)
    @expressions = {}
    for expr in json.library.statements?.def ? []
      @expressions[expr.name] = new ExpressionDef(expr)

  exec: (ctx) ->
    Results r = new Results()
    while ctx.currentPatient()
      for key,expr of @expressions when expr.context is "PATIENT"
        r.recordPatientResult(ctx.currentPatient().id, key, expr.exec(ctx))
      ctx.nextPatient()
    r

class Context
  constructor: (@measure, @patients = [], @parameters = {}, @valueSets = {}) ->
    @patientIndex = 0

  withPatients: (p) ->
    @patients = p ? []
    @

  withParameters: (p) ->
    @parameters = p ? {}
    @

  withValueSets: (vs) ->
    @valueSets = vs ? {}
    @

  resolveValueSet: (oid, version) ->
    vs = @valueSets[oid]
    if vs?
      if version? then vs = vs[version]
      else vs = vs[key] for key of vs
    vs

  currentPatient: () ->
    if @patientIndex < @patients.length then @patients[@patientIndex] else null

  nextPatient:() ->
    @patientIndex++
    @currentPatient()

class Results
  constructor: () ->
    @patientResults = {}
    @populationResults = {}

  recordPatientResult: (patientId, resultName, result) ->
    @patientResults[patientId] ?= {}
    @patientResults[patientId][resultName] = result

  recordPopulationResult: (resultName, result) ->
    @populationResults[resultName] = result

# Expressions

class Expression
  constructor: (json) ->
    if json.type? then @type = json.type

    if json.operand?
      op = build(json.operand)
      if typeIsArray(json.operand) then @args = op else @arg = op

  exec: (ctx) ->
    this

  execArgs: (ctx) ->
    switch
      when @args? then (arg.exec(ctx) for arg in @args)
      when @arg? then @arg.exec(ctx)
      else null

class ExpressionDef extends Expression
  constructor: (json) ->
    super
    @name = json.name
    @context = json.context
    @expression = build(json.expression)

  exec: (ctx) ->
    @expression.exec(ctx)

class ExpressionRef extends Expression
  constructor: (json) ->
    super
    @name = json.name

  exec: (ctx) ->
    ctx.measure.expressions[@name]?.exec(ctx)

# Parameters

class ParameterDef extends Expression
  constructor: (json) ->
    super
    @name = json.name
    @default = build(json.default)

  exec: (ctx) ->
    if (ctx?.parameters[@name]?) then ctx.parameters[@name]
    else @default?.exec(ctx)

class ParameterRef extends Expression
  constructor: (json) ->
    super
    @name = json.name

  exec: (ctx) ->
    ctx.measure.parameters[@name]?.exec(ctx)

# Value Sets and Codes
class Code extends Expression
  constructor: (@code, @system, @version) ->
    super
    @type = 'Code'

class ValueSet extends Expression
  constructor: (@id, @version, @authority) ->
    super
    @type ?= 'ValueSet'
    if typeof @id is "object"
      json = @id
      @id = json.id
      @version = json.version
      @authority = json.authority

class ValueSetDef extends Expression
  constructor: (json) ->
    super
    @name = json.name
    @valueSet = build(json.valueSet)

  exec: (ctx) ->
    @valueSet?.exec(ctx)

class ValueSetRef extends Expression
  constructor: (json) ->
    super
    @name = json.name

  exec: (ctx) ->
    ctx.measure.valueSets[@name]?.exec(ctx)

# Logical Operators

class And extends Expression
  constructor: (json) ->
    super

  exec: (ctx) ->
    results = @execArgs(ctx)
    results.reduce (a,b) -> a and b

# Functions

class FunctionRef extends Expression
  constructor: (json) ->
    super
    @name = json.name

class AgeAtFunctionRef extends FunctionRef
  constructor: (json) ->
    super

  exec: (ctx) ->
    date = @execArgs(ctx)[0].toJSDate()
    ageInMS = date.getTime() - ctx.currentPatient().birthdate.getTime()
    # Doesn't account for leap year, but close enough for now
    Math.floor(ageInMS / (1000 * 60 * 60 * 24 * 365))

class CodeFunctionRef extends FunctionRef
  constructor: (json) ->
    super

  exec: (ctx) ->
    new Code(@execArgs(ctx)...)

class InValueSetFunctionRef extends FunctionRef
  constructor: (json) ->
    super
    @in = new In({
      type: 'In',
      operand: [
          json.operand[0],
          {
            type: 'FunctionRef',
            name: 'ValueSet',
            operand: json.operand[1..]
          }
      ]
    })

  exec: (ctx) ->
    @in.exec(ctx)

class DateFunctionRef extends FunctionRef
  constructor: (json) ->
    super

  exec: (ctx) ->
    new CqlDate(@execArgs(ctx)...)

class ValueSetFunctionRef extends FunctionRef
  constructor: (json) ->
    super

  exec: (ctx) ->
    new ValueSet(@execArgs(ctx)...)

# Comparisons
class Greater extends Expression
  constructor: (json) ->
    super

  exec: (ctx) ->
    args = @execArgs(ctx)
    args[0] > args[1]

class GreaterOrEqual extends Expression
  constructor: (json) ->
    super

  exec: (ctx) ->
    args = @execArgs(ctx)
    args[0] >= args[1]

class Equal extends Expression
  constructor: (json) ->
    super

  exec: (ctx) ->
    args = @execArgs(ctx)
    args[0] == args[1]

class LessOrEqual extends Expression
  constructor: (json) ->
    super

  exec: (ctx) ->
    args = @execArgs(ctx)
    args[0] <= args[1]

class Less extends Expression
  constructor: (json) ->
    super

  exec: (ctx) ->
    args = @execArgs(ctx)
    args[0] < args[1]

# Lists and Intervals

class List extends Expression
  constructor: (json) ->
    super
    @elements = build json.element

  exec: (ctx) ->
    (item.exec(ctx) for item in @elements)

class Interval extends Expression
  constructor: (json) ->
    super
    @beginOpen = json.beginOpen
    @endOpen = json.endOpen
    @begin = build(json.begin)
    @end = build(json.end)

class Begin extends Expression
  constructor: (json) ->
    super

  exec: (ctx) ->
    # assumes this is interval
    @arg.exec(ctx).begin.exec(ctx)

# Dates

class CqlDate
  constructor: (@year, @month, @day, @hour, @minute, @second) ->

  toJSDate: () ->
    new Date(@year, (@month?-1) ? 0, @day ? 1, @hour ? 0, @minute ? 0, @second ? 0, 0)

# Membership

class In extends Expression
  constructor: (json) ->
    super

  exec: (ctx) ->
    [item, container] = @execArgs(ctx)

    switch
      when typeIsArray container
        return item in container
      when container.type is 'ValueSet'
        vs = ctx.resolveValueSet(container.id, container.version)
        if vs?
          code = if typeof item is 'string' then new Code(item) else item
          codes = (c for c in vs when c.code is code.code)
          if code.system? then codes = (c for c in codes when c.system is code.system)
          if code.version? then codes = (c for c in codes when c.version is code.version)
          return codes.length > 0

# Math

class Add extends Expression
  constructor: (json) ->
    super

  exec: (ctx) ->
    @execArgs(ctx).reduce (x,y) -> x + y

# Literals

class Literal extends Expression
  constructor: (json) ->
    super
    @valueType = json.valueType
    @value = json.value

  exec: (ctx) ->
    @value

class BooleanLiteral extends Literal
  constructor: (json) ->
    super
    @value = @value is 'true'

  exec: (ctx) ->
    @value

class IntegerLiteral extends Literal
  constructor: (json) ->
    super
    @value = parseInt(@value, 10)

  exec: (ctx) ->
    @value

class StringLiteral extends Literal
  constructor: (json) ->
    super

  exec: (ctx) ->
    @value

module.exports.Library = Library
module.exports.Context = Context
module.exports.Results = Results