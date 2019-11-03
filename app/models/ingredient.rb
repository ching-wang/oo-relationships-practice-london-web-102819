class Ingredient
  attr_reader :name, :calorie, :bakery, :dessert
  
  @@all = []
  def initialize(name, calorie, bakery, dessert)
    @name = name
    @calorie = calorie
    @bakery = bakery
    @dessert = dessert
    @@all << self
  end

  def self.all
    @@all
  end

  #should take a string argument return an array of all ingredients that
  #include that string in their name
  def self.find_all_by_name(ingredient_name)
    self.all.find {|d| d.name.include?(ingredient_name)}
  end

end