# frozen_string_literal: true

class PublicRecipesController < ApplicationController
  def index
    @recipes = Recipe.where(user_id: current_user.id).or(Recipe.where(public: true)).includes(:user, recipe_foods: [:food])
  end
end
