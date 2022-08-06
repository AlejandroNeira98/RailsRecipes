# frozen_string_literal: true

class RecipesController < ApplicationController
  def index
    if current_user
      @recipes = current_user.recipes
    else
      redirect_to new_user_session_path
    end
  end

  def new; end

  def create
    recipe = Recipe.new(name: params[:name], preparation_time: params[:preparation_time], cooking_time: params[:cooking_time], description: params[:description], public: true, user_id: current_user.id)
    redirect_to recipes_path if recipe.save
  end

  def destroy; end

  def show
    @recipe = Recipe.find(params[:id])
    @recipe_foods = RecipeFood.where(recipe_id: @recipe.id)
    @foods = Food.where(id: @recipe_foods)
  end
end
