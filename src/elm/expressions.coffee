expressionModules = [
  'expression',
  'aggregate',
  'arithmetic',
  'clinical',
  'comparison',
  'conditional',
  'datetime',
  'declaration',
  'external',
  'interval',
  'list',
  'literal',
  'logical',
  'nullological',
  'parameters',
  'query',
  'reusable',
  'string',
  'structured',
  'type',
  'overloaded'
]

for name in expressionModules
  imported = require "./#{name}"
  # TODO: Limit to just Expressions?
  for element in Object.keys(imported)
    module.exports[element] = imported[element]
