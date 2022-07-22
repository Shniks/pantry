require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/pantry'

class PantryTest < Minitest::Test

  def test_if_it_exists
    pantry = Pantry.new

    assert_instance_of Pantry, pantry
  end

  def test_it_initially_has_zero_stock
    pantry = Pantry.new
    ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})

    assert_equal ({}), pantry.stock
    assert_equal 0, pantry.stock_check(ingredient1)
  end

end
