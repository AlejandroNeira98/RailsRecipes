# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(name: 'some name', email: 'some@email', password: 'some password')
User.create(name: 'some name', email: 'some-other@email', password: 'some password')

Food.create(name: 'Apple', measurement_unit: 'grams', price: 5, quantity: 6, user_id: 1)

Recipe.create(name: 'some recipe', preparation_time: 3, cooking_time: 4, description: 'some description', public: true,
              user_id: 1)

RecipeFood.create(recipe_id: 1, food_id: 1, quantity: 5)
