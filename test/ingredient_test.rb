require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/ingredient'
require 'pry'

class IngredientTest < Minitest::Test

  def test_if_it_exists
    ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})

    assert_instance_of Ingredient, ingredient1
  end

end
