{ Expression } = require './expression'
{ FunctionRef } = require './reusable'
{ ValueSet, Code } = require '../datatypes/datatypes'
{ build } = require './builder'

module.exports.ValueSetDef = class ValueSetDef extends Expression
  constructor: (json) ->
    super
    @name = json.name
    @id = json.id
    @version = json.version
    #todo: code systems and versions

  exec: (ctx) ->
    valueset = ctx.codeService.findValueSet(@id, @version) ? new ValueSet(@id, @version)
    ctx.rootContext().set @name, valueset
    valueset

module.exports.ValueSetRef = class ValueSetRef extends Expression
  constructor: (json) ->
    super
    @name = json.name

  exec: (ctx) ->
    # TODO: This calls the code service every time-- should be optimized
    valueset = ctx.getValueSet(@name)
    if valueset instanceof Expression
      valueset = valueset.exec(ctx)
    valueset

module.exports.InValueSet = class InValueSet extends Expression
  constructor: (json) ->
    super
    @code = build json.code
    @valueset = new ValueSetRef json.valueset

  exec: (ctx) ->
    code = @code.exec(ctx)
    valueset = @valueset.exec(ctx)
    if code? and valueset? then valueset.hasCode code else false

module.exports.Quantity = class Quantity extends Expression
  constructor: (json) ->
    super
    @unit = json.unit
    @value = json.value

  exec: (ctx) ->
    @

calculateAge = (date1, date2, precision) ->
  ageInMS = date2.getTime() - date1.getTime()
  # Not quite precise (leap years, months, etc) but close enough for now
  divisor = switch (precision)
    when 'Year' then 1000 * 60 * 60 * 24 * 365
    when 'Month' then (1000 * 60 * 60 * 24 * 365) / 12
    when 'Day' then 1000 * 60 * 60 * 24
    when 'Hour' then 1000 * 60 * 60
    when 'Minute' then 1000 * 60
    when 'Second' then 1000
    else 1
  Math.floor(ageInMS / divisor)

module.exports.CalculateAge = class CalculateAge extends Expression
  constructor: (json) ->
    super
    @precision = json.precision

  exec: (ctx) ->
    date1 = @execArgs(ctx).toJSDate()
    date2 = new Date()
    calculateAge date1, date2, @precision

module.exports.CalculateAgeAt = class CalculateAgeAt extends Expression
  constructor: (json) ->
    super
    @precision = json.precision

  exec: (ctx) ->
    args = @execArgs(ctx)
    date1 = args[0].toJSDate()
    date2 = args[1].toJSDate()
    calculateAge date1, date2, @precision

# TODO: Not really defined well anywhere
module.exports.CodeFunctionRef = class CodeFunctionRef extends FunctionRef
  constructor: (json) ->
    super

  exec: (ctx) ->
    new Code(@execArgs(ctx)...)
