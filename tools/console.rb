require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
############ Bakery Class Testing ###############
b1 = Bakery.new("North London Bakery")
b2 = Bakery.new("South London Bakery")
b3 = Bakery.new("West London Bakery")
b4 = Bakery.new("East London Bakery")

############ Dessert Class Testing ###############
d1 = Dessert.new("sweet apple pie")
d2 = Dessert.new("coffe Cake")
d3 = Dessert.new("carrot Cake with corn")
d4 = Dessert.new("chocolate Cake")


############ Ingredient Class Testing ###############
#(name, calorie, bakery, dessert)
i1 = Ingredient.new("apple jucie", 40, b1, d1)
i1 = Ingredient.new("chocolate mussi", 70, b1, d4)
i1 = Ingredient.new("coffe powder", 140, b2, d2)
i1 = Ingredient.new("flour", 180, b3, d2)
i1 = Ingredient.new("carrot slice", 300, b4, d3)
i1 = Ingredient.new("flour", 700, b1, d3)
i1 = Ingredient.new("sweet corn flour", 10, b3, d4)

############ Gym Class Testing ###############
############ IMDB Class Testing ###############
############ LYFT Class Testing ###############
############ CROWDFUNDING  Class Testing ###############

binding.pry
0