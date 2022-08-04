# frozen_string_literal: true

class GeneralShoppingListController < ApplicationController
  def index
    recipes = current_user.recipes.includes(recipe_foods: [:food])
    @food_to_buy = []
    @total_cost = 0
    recipes.recipe_foods.each do |recipe_food|
      if ( recipe_food.quantity - recipe_food.food.quantity) > 0
        food_to_buy = {
          name: recipe_food.food.name,
          quantity: recipe_food.quantity - recipe_food.food.quantity,
          price: ( recipe_food.quantity - recipe_food.food.quantity) * recipe_food.food.price
          }
        @food_to_buy << food_to_buy
        @total_cost += food_to_buy.price
      end
    end
  end

  def new; end

  def create; end
end
