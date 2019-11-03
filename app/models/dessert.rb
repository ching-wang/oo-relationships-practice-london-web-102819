class Dessert
  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
  
  def ingredients
    Ingredient.all.select {|i| i.dessert == self}
  end

  # should return the bakery object for the dessert
  def bakery
    ingredients.map {|i| i.bakery}
  end

  #should return a number totaling all the calories for 
  #all the ingredients included in that dessert
  def calories
    ingredients.map {|i| i.calorie}.sum
  end

end
