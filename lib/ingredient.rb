class Ingredient

  attr_reader :name,  :unit,  :calories

  def initialize(ingredient)
    @name = ingredient[:name]
    @unit = ingredient[:unit]
    @calories = ingredient[:calories]
  end




end
