# frozen_string_literal: true

class GeneralShoppingListController < ApplicationController
  def index
    recipes = current_user.recipes.includes(recipe_foods: [:food])
    @food_to_buy = []
    @total_cost = 0
    recipes.each do |recipe|
      recipe.recipe_foods.each do |recipe_food|
        next unless (recipe_food.quantity - recipe_food.food.quantity).positive?

        food_to_buy = {
          name: recipe_food.food.name,
          quantity: recipe_food.quantity - recipe_food.food.quantity,
          price: (recipe_food.quantity - recipe_food.food.quantity) * recipe_food.food.price
        }
        @food_to_buy << food_to_buy
        @total_cost += food_to_buy.price
      end
    end
  end

  def new; end

  def create; end
end
