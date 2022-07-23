class Recipe

  attr_reader :name,  :ingredients_required,  :ingredients

  def initialize(name)
    @name = name
    @ingredients_required = Hash.new(0)
    @ingredients = []
  end

  def add_ingredient(ingredient, quantity)
    ingredients_required[ingredient] += quantity
    insert_ingredient_into_ingredients(ingredient)
  end

  def insert_ingredient_into_ingredients(ingredient)
    ingredients << ingredient if !ingredients.include?(ingredient)
  end

  def total_calories
    ingredients_required.reduce(0) do |sum, (ingredient, quantity)|
      sum + ingredient.calories * quantity
    end
  end

end
