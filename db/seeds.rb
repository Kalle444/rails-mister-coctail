
puts "start seed"

Cocktail.destroy_all
Dose.destroy_all
Ingredient.destroy_all
puts "db's dropped"


# first dose
first = Dose.new(description: "6cl")
first.cocktail = Cocktail.create(name: "Mojito")
first.ingredient = Ingredient.create(name: "mint leaves")
first.save

# second dose
second = Dose.new(description: "4cl")
second.cocktail = Cocktail.create(name: "GT")
second.ingredient = Ingredient.create(name: "ice")
second.save

# third dose
third = Dose.new(description: "8cl")
third.cocktail = Cocktail.create(name: "Screwdriver")
third.ingredient = Ingredient.create(name: "lemon")
third.save

puts "seeded complete"
