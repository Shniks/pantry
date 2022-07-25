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
    i_names = []
    recipes.each do |recipe|
      insert_ingredients(recipe, i_names)
    end
  i_names
  end

  def insert_ingredients(recipe, i_names)
    recipe.ingredients.each do |ingredient|
      i_names << ingredient.name if !i_names.include?(ingredient.name)
    end
  end

  def highest_calorie_meal
    recipes.max_by { |recipe| recipe.total_calories }
  end

  def summary
    cb_summary = []
    recipes.each do |recipe|
      ordered = []
      order = recipe.ingredients_required.sort_by do |ingredient, quantity|
        -ingredient.calories * quantity
      end
      order.each do |i|
        ordered << {:ingredient => i.first.name, :amount => "#{i.last} #{i.first.unit}"}
      end
      cb_summary << {:name => recipe.name, :details => {:ingredients => ordered, :total_calories =>recipe.total_calories}}
    end
    cb_summary
  end

end
