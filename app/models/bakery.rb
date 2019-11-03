class Bakery
  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  #should return an array of ingredients for the bakery's desserts
  def ingredients
    Ingredient.all.select {|i| i.bakery == self}
  end

  #should return an array of desserts the bakery makes
  def desserts
    ingredients.map {|i| i.dessert}
  end

  def total_calories
    ingredients.map {|i| i.calorie}
  end
  #should return a number totaling the average 
  #number of calories for the desserts sold at this bakery
  def average_calories
    total_calories.sum / total_calories.size
  end

  # should return a string of names for ingredients for the bakery
  def shopping_list
    ingredients.map {|i| i.name}
  end

end
