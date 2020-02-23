require 'json'
require 'open-uri'
# require '../app/models/ingredient.rb'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cocktail.destroy_all
Ingredient.destroy_all

  url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
  list = JSON.parse(open(url).read)

 new_list = list["drinks"].map do |ingredient|
  ingredient['strIngredient1']
 end

 new_list.sort.each do |ing|
   # puts ing['strIngredient1']
 Ingredient.create(name: ing)
 end


# Ingredient.create(name: "Lemon")
# Ingredient.create(name: "Ice")
# Ingredient.create(name: "Mint Leaves")
# Ingredient.create(name: "Cherry Liqueur")
# Ingredient.create(name: "Egg Yolk")
# Ingredient.create(name: "Bourbon")
# Ingredient.create(name: "Tequila")
