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

# url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
# drinks = open(url).read

# # ingredients = []
# list = JSON.parse(drinks)

# list.each do |ing|
#   puts "#{ing['strIngredient']}"
# end

# Ingredient.create(name: ing['strIngredient1'])
# end
Ingredient.destroy_all

Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")
Ingredient.create(name: "cherry liquer")
Ingredient.create(name: "egg yolk")