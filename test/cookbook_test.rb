require 'simplecov'
SimpleCov.start
require 'minitest/autorun'
require 'minitest/pride'
require './lib/cookbook'

class CookbookTest < Minitest::Test

  def test_if_it_exists
    cookbook = Cookbook.new

    assert_instance_of Cookbook, cookbook
  end

  def test_if_it_can_add_recipes_to_cookbook
    recipe1 = Recipe.new("Mac and Cheese")
    recipe2 = Recipe.new("Cheese Burger")
    cookbook = Cookbook.new

    cookbook.add_recipe(recipe1)
    cookbook.add_recipe(recipe2)

    assert_equal [recipe1, recipe2], cookbook.recipes 
  end

end
