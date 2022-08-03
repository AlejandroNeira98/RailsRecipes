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

  def create; end

  def destroy; end
end
