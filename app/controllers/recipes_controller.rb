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

  def show; end
end
