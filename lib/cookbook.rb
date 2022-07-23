require 'pry'
class Cookbook

  attr_reader :recipes

  def initialize
    @recipes = []
  end

  def add_recipe(recipe)
    recipes << recipe
  end

  def ingredients
    recipe_names = []
    recipes.each do |recipe|
      insert_ingredients(recipe, recipe_names)
    end
  recipe_names
  end

  def insert_ingredients(recipe, recipe_names)
    recipe.ingredients.each do |ingredient|
      recipe_names << ingredient.name if !recipe_names.include?(ingredient.name)
    end
  end

end
