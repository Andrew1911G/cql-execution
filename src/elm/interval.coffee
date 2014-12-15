{ Expression, UnimplementedExpression } = require './expression'
{ build } = require './builder'
DT = require '../datatypes/datatypes'

module.exports.Interval = class Interval extends Expression
  constructor: (json) ->
    super
    @lowClosed = json.lowClosed
    @highClosed = json.highClosed
    @low = build(json.low)
    @high = build(json.high)

  exec: (ctx) ->
    new DT.Interval(@low.exec(ctx), @high.exec(ctx), @lowClosed, @highClosed)

# TODO: Deconflict w/ definition in comparison.coffee
# module.exports.Equal = class Equal extends UnimplementedExpression

# TODO: Deconflict w/ definition in comparison.coffee
# module.exports.NotEqual = class NotEqual extends UnimplementedExpression

# TODO: Deconflict w/ definition in list.coffee
# module.exports.Contains = class Contains extends UnimplementedExpression

# TODO: Deconflict w/ definition in list.coffee
# module.exports.In = class In extends UnimplementedExpression

# TODO: Deconflict w/ definition in list.coffee
# module.exports.Includes = class Includes extends UnimplementedExpression

# TODO: Deconflict w/ definition in list.coffee
# module.exports.IncludedIn = class IncludedIn extends UnimplementedExpression

# TODO: Deconflict w/ definition in list.coffee
# module.exports.ProperIncludes = class ProperIncludes extends UnimplementedExpression

# TODO: Deconflict w/ definition in list.coffee
# module.exports.ProperIncludedIn = class ProperIncludedIn extends UnimplementedExpression

# TODO: Deconflict w/ definition in datetime.coffee
# module.exports.Before = class Before extends UnimplementedExpression

# TODO: Deconflict w/ definition in datetime.coffee
# module.exports.After = class After extends UnimplementedExpression

module.exports.Meets = class Meets extends UnimplementedExpression

module.exports.MeetsAfter = class MeetsAfter extends UnimplementedExpression

module.exports.MeetsBefore = class MeetsBefore extends UnimplementedExpression

module.exports.Overlaps = class Overlaps extends UnimplementedExpression

module.exports.OverlapsAfter = class OverlapsAfter extends UnimplementedExpression

module.exports.OverlapsBefore = class OverlapsBefore extends UnimplementedExpression

# TODO: Deconflict w/ definition in list.coffee
# module.exports.Union = class Union extends UnimplementedExpression

# TODO: Deconflict w/ definition in list.coffee
# module.exports.Intersect = class Intersect extends UnimplementedExpression

# TODO: Spec has "Difference" defined, but should this be "Except"? (also deconflict w/ list.coffee)
# module.exports.Except = class Except extends UnimplementedExpression

# TODO: Deconflict w/ definition in string.coffee
# module.exports.Length = class Length extends UnimplementedExpression

# TODO: Spec has "Begin" defined, but shouldn't it be "Start"?
module.exports.Start = class Start extends Expression
  constructor: (json) ->
    super

  exec: (ctx) ->
    @arg.exec(ctx).low

module.exports.End = class End extends UnimplementedExpression

# TODO: Spec has "Begins" defined, but shouldn't it be "Starts"?
class Starts extends UnimplementedExpression

module.exports.Ends = class Ends extends UnimplementedExpression

# TODO: Not in the ELM Spec
module.exports.Ends = class Collapse extends UnimplementedExpression

# TODO: Not in the ELM Spec
module.exports.Ends = class Width extends UnimplementedExpression
