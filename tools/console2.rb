require_relative '../config/environment.rb'
require_relative '../app/models/bakery.rb'
require_relative '../app/models/desserts.rb'
require_relative '../app/models/ingredients.rb'

def reload
  load 'config/environment.rb'
end

b1=Bakery.new(name:"Houston Bakery")
b2=Bakery.new(name:"Austin Bakery")
b3=Bakery.new(name:"San Antonio Bakery")
b4=Bakery.new(name:"Best Bakery")

d1=Desserts.new(name:"tiramisu", bakery: b2)
d2=Desserts.new(name:"cake", bakery: b3)
d3=Desserts.new(name:"icecream", bakery: b1)
d4=Desserts.new(name:"cookies", bakery: b3)
d5=Desserts.new(name:"coffee cake", bakery: b4)

i1=Ingredient.new(ingredient: "sugar", calorie_count: 5, dessert: d1)
i2=Ingredient.new(ingredient: "flour", calorie_count: 8, dessert: d3)
i3=Ingredient.new(ingredient: "sugar cookie", calorie_count: 10, dessert: d2)
i4=Ingredient.new(ingredient: "cream", calorie_count: 8, dessert:d4)
i5=Ingredient.new(ingredient: "chocolate", calorie_count: 14, dessert:d5)




Pry.start


binding.pry 
0