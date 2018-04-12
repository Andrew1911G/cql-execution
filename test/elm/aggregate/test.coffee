should = require 'should'
setup = require '../../setup'
data = require './data'
validateQuantity = (object,expectedValue,expectedUnit) ->
  object.constructor.name.should.equal "Quantity"
  object.value.should.equal expectedValue
  object.unit.should.equal expectedUnit


describe 'Count', ->
  @beforeEach ->
    setup @, data

  it 'should be able to count lists without nulls', ->
    @not_null.exec(@ctx).should.equal 5
  it 'should be able to count lists with nulls', ->
    @has_null.exec(@ctx).should.equal 2
  it 'should be able to count empty list', ->
    @empty.exec(@ctx).should.equal 0
  it.skip 'should return 0 if list is null', ->
    # TODO: We currently return null
    @countNullSource.exec(@ctx).should.equal 0

describe 'Sum', ->
  @beforeEach ->
    setup @, data

  it 'should be able to sum lists without nulls', ->
    @not_null.exec(@ctx).should.equal 15
  it 'should be able to sum lists with nulls', ->
    @has_null.exec(@ctx).should.equal 3
  it 'should be able to sum empty list', ->
    should(@empty.exec(@ctx)).be.null
  it 'should be able to sum quantity lists without nulls', ->
    validateQuantity @not_null_q.exec(@ctx), 15, 'ml'
  it 'should be able to sum  quantity lists with nulls', ->
    validateQuantity @has_null_q.exec(@ctx), 3, 'ml'
  it 'should return null for unmatched units in a list of quantiies', ->
    should(@unmatched_units_q.exec(@ctx)).be.null
  it 'should be able to sum quantity lists with related units', ->
    validateQuantity @q_diff_units.exec(@ctx), 15, 'ml'
  it 'should return null if all elements null', ->
    should(@sumAllNull.exec(@ctx)).be.null
  it 'should return null for null souce', ->
    should(@sumNullSource.exec(@ctx)).be.null

describe 'Min', ->
  @beforeEach ->
    setup @, data

  it 'should be able to find min in lists without nulls', ->
    @not_null.exec(@ctx).should.equal 0
  it 'should be able to find min in lists with nulls', ->
    @has_null.exec(@ctx).should.equal -1
  it 'should be return null for empty list', ->
    should(@empty.exec(@ctx)).be.null
  it 'should be able to find min in lists of quantiies without nulls', ->
    validateQuantity @not_null_q.exec(@ctx), 0, 'ml'
  it 'should be able to find min in lists of quantiies with nulls', ->
    validateQuantity @has_null_q.exec(@ctx), -1 , 'ml'
  it 'should be able to find min in lists of quantiies with related units', ->
    validateQuantity @q_diff_units.exec(@ctx), 0, 'ml'
  it 'should return null if no non-null elements', ->
    should(@minAllNull.exec(@ctx)).be.null
  it 'should return null for null souce', ->
    should(@minNullList.exec(@ctx)).be.null

describe 'Max', ->
  @beforeEach ->
    setup @, data

  it 'should be able to find max in lists without nulls', ->
    @not_null.exec(@ctx).should.equal 10
  it 'should be able to find max in lists with nulls', ->
    @has_null.exec(@ctx).should.equal 2
  it 'should be return null for empty list', ->
    should(@empty.exec(@ctx)).be.null
  it 'should be able to find max in lists of quantiies without nulls', ->
    validateQuantity @not_null_q.exec(@ctx),  10, 'ml'
  it 'should be able to find max in lists of quantiies with nulls', ->
    validateQuantity @has_null_q.exec(@ctx), 2, 'ml'
  it 'should be able to find max in lists of quantiies with related units', ->
    validateQuantity @q_diff_units.exec(@ctx),  5000, 'ml'
  it 'should return null if no non-null elements', ->
    should(@maxAllNull.exec(@ctx)).be.null
  it 'should return null for null source', ->
    should(@maxNullList.exec(@ctx)).be.null

describe 'Avg', ->
  @beforeEach ->
    setup @, data
  it 'should be able to find average for lists without nulls', ->
    @not_null.exec(@ctx).should.equal 3
  it 'should be able to find average for lists with nulls', ->
    @has_null.exec(@ctx).should.equal 1.5
  it 'should be return null for empty list', ->
    # NOTE: Spec is not clear, assuming null to match null source
    should(@empty.exec(@ctx)).be.null
  it 'should be able to find average for lists of quantiies without nulls', ->
    validateQuantity @not_null_q.exec(@ctx), 3, 'ml'
  it 'should be able to find average for lists of quantiies with nulls', ->
    validateQuantity @has_null_q.exec(@ctx), 1.5 , 'ml'
  it 'should be able to find average for lists of quantiies with related units', ->
    validateQuantity @q_diff_units.exec(@ctx), 3, 'ml'
  it 'should return null if souce is null', ->
    should(@avgNullSource.exec(@ctx)).be.null

describe 'Median', ->
  @beforeEach ->
    setup @, data

  it 'should be able to find median of odd numbered list', ->
    @odd.exec(@ctx).should.equal 3
  it 'should be able to find median of even numbered list', ->
    @even.exec(@ctx).should.equal 3.5
  it 'should be able to find median of odd numbered list that contains duplicates', ->
    @dup_vals_odd.exec(@ctx).should.equal 3
  it 'should be able to find median of even numbered list that contians duplicates', ->
    @dup_vals_even.exec(@ctx).should.equal 2.5
  it 'should be return null for empty list', ->
    should(@empty.exec(@ctx)).be.null
  it 'should be able to find median of odd numbered list', ->
    validateQuantity @odd_q.exec(@ctx),  3 , 'ml'
  it 'should be able to find median of even numbered list', ->
    validateQuantity @even_q.exec(@ctx), 3.5, 'ml'
  it 'should be able to find median of odd numbered list that contains duplicates', ->
    validateQuantity @dup_vals_odd_q.exec(@ctx),3, 'ml'
  it 'should be able to find median of even numbered list that contians duplicates', ->
    validateQuantity @dup_vals_even_q.exec(@ctx), 2.5, 'ml'
  it 'should be able to find median of even numbered list of quantities with related units', ->
    validateQuantity @q_diff_units.exec(@ctx), 3.5, 'ml'
  it 'should return null if all elements null', ->
    should(@medianAllNull.exec(@ctx)).be.null
  it 'should return null if source is null', ->
    should(@medianNullSource.exec(@ctx)).be.null

describe 'Mode', ->
  @beforeEach ->
    setup @, data
  it 'should be able to find mode of lists without nulls', ->
    @not_null.exec(@ctx).should.equal 2
  it 'should be able to find Mode lists with nulls', ->
    @has_null.exec(@ctx).should.equal 2
  it 'should be return null for empty list', ->
    should(@empty.exec(@ctx)).be.null
  it 'should be able to find bimodal', ->
    @bi_modal.exec(@ctx).should.eql [2,3]
  it 'should return null if all elements null', ->
    should(@modeAllNull.exec(@ctx)).be.null
  it 'should return null if null source', ->
    should(@modeNullSource.exec(@ctx)).be.null

describe 'PopulationVariance', ->
  @beforeEach ->
    setup @, data
  it 'should be able to find PopulationVariance of a list ', ->
    @v.exec(@ctx).should.equal 2.5
  it 'should be able to find PopulationVariance of a list of like quantities', ->
    validateQuantity @v_q.exec(@ctx), 2.5, 'ml'
  it 'should be able to find PopulationVariance of a list of related quantities', ->
    validateQuantity @q_diff_units.exec(@ctx), 2.5, 'ml'
  it 'should throw an exception when quantities are not compatible ', ->
    try
      @q_throw1.exec(@ctx)
      false.should.be.true("Incompatible Quantities should throw an error")
    catch
  it 'should throw an exception when quanties exist in a list but not all are quantities', ->
    try
      @q_throw2.exec(@ctx)
      false.should.be.true("Incompatible Quantities should throw an error")
    catch
  it 'should return null if source null', ->
    should(@populationVarianceNullSource.exec(@ctx)).be.null

  it 'should return null if all elements null', ->
    should(@populationVarianceAllNull.exec(@ctx)).be.null

describe 'Variance', ->
  @beforeEach ->
    setup @, data
  it 'should be able to find Variance of a list ', ->
    @v.exec(@ctx).should.equal 2
  it 'should be able to find Variance of a list of matched quantities', ->
    validateQuantity @v_q.exec(@ctx), 2, 'ml'
  it 'should be able to find Variance of a list of related quantities', ->
    validateQuantity @q_diff_units.exec(@ctx), 2, 'ml'
  it 'should throw an exception when quantities are not compatible ', ->
    try
      @q_throw1.exec(@ctx)
      false.should.be.true("Incompatible Quantities should throw an error")
    catch
  it 'should throw an exception when quanties exist in a list but not all are quantities', ->
    try
      @q_throw2.exec(@ctx)
      false.should.be.true("Incompatible Quantities should throw an error")
    catch
  it 'should return null if source null', ->
    should(@varianceNullSource.exec(@ctx)).be.null

  it 'should return null if all elements null', ->
    should(@varianceAllNull.exec(@ctx)).be.null

describe 'StdDev', ->
  @beforeEach ->
    setup @, data
  it 'should be able to find Standard Dev of a list ', ->
    @std.exec(@ctx).should.equal 1.4142135623730951
  it 'should be able to find Standard Dev of a list of like qauntities', ->
    validateQuantity @std_q.exec(@ctx), 1.4142135623730951, 'ml'
  it 'should be able to find Standard Dev of a list of related quantities', ->
    validateQuantity @q_diff_units.exec(@ctx), 1.4142135623730951, 'ml'
  it 'should throw an exception when quantities are not compatible ', ->
    try
      @q_throw1.exec(@ctx)
      false.should.be.true("Incompatible Quantities should throw an error")
    catch
  it 'should throw an exception when quanties exist in a list but not all are quantities', ->
    try
      @q_throw2.exec(@ctx)
      false.should.be.true("Incompatible Quantities should throw an error")
    catch
  it 'should return null if source null', ->
    should(@stdDevNullSource.exec(@ctx)).be.null

  it 'should return null if all elements null', ->
    should(@stdDevAllNull.exec(@ctx)).be.null

describe 'PopulationStdDev', ->
  @beforeEach ->
    setup @, data
  it 'should be able to find Population Standard Dev of a list ', ->
    @dev.exec(@ctx).should.equal 1.5811388300841898
  it 'should be able to find Population Standard Dev of a list of quantities', ->
    validateQuantity @dev_q.exec(@ctx), 1.5811388300841898, 'ml'
  it 'should be able to find Population Standard Dev of a list of related quantities', ->
    validateQuantity @q_diff_units.exec(@ctx), 1.5811388300841898, 'ml'
  it 'should throw an exception when quantities are not compatible ', ->
    try
      @q_throw1.exec(@ctx)
      false.should.be.true("Incompatible Quantities should throw an error")
    catch
  it 'should throw an exception when quanties exist in a list but not all are quantities', ->
    try
      @q_throw2.exec(@ctx)
      false.should.be.true("Incompatible Quantities should throw an error")
    catch
  it 'should return null if source null', ->
    should(@populationStdDevNullSource.exec(@ctx)).be.null

  it 'should return null if all elements null', ->
    should(@populationStdDevAllNull.exec(@ctx)).be.null


describe 'AllTrue', ->
  @beforeEach ->
    setup @, data

  it 'should be able to calculate all true', ->
    @at.exec(@ctx).should.equal true
    @atwn.exec(@ctx).should.equal false
    @atf.exec(@ctx).should.equal false
    @atfwn.exec(@ctx).should.equal false

  it.skip 'should return true if source is null', ->
    # TODO: We currently return null instead of true, spec is clear to return true
    @allTrueNullSource.exec(@ctx).should.equal true

  it.skip 'should return true if no non-null elements', ->
    # TODO: We currently return false, spec is clear to return true
    @allTrueAllNull.exec(@ctx).should.equal true

  it 'should return true if empty list', ->
    # NOTE: The spec does not say what to do for empty list, assuming true to match null source
    @allTrueEmptyList.exec(@ctx).should.equal true

describe 'AnyTrue', ->
  @beforeEach ->
    setup @, data

  it 'should be able to calculate any true', ->
    @at.exec(@ctx).should.equal true
    @atwn.exec(@ctx).should.equal true
    @atf.exec(@ctx).should.equal false
    @atfwn.exec(@ctx).should.equal false

  it.skip 'should return false if source is null', ->
    # TODO: We currently return null instead of false, spec is clear to return false
    @anyTrueNullSource.exec(@ctx).should.equal false

  it 'should return false if no non-null elements', ->
    @anyTrueAllNull.exec(@ctx).should.equal false

  it 'should return false if empty list', ->
    # NOTE: The spec does not say what to do for empty list, assuming false to match null source
    @anyTrueEmptyList.exec(@ctx).should.equal false