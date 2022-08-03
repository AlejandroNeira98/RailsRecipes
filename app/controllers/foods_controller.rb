# frozen_string_literal: true

class FoodsController < ApplicationController
  def index
    if current_user
      @foods = current_user.foods
    else 
      redirect_to new_user_session_path
    end
  end

  def new; end

  def create
    food = Food.new(params[:food])
    redirect_to foods_path if food.create
  end

  def destroy; end
end
