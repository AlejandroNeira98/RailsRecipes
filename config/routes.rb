# frozen_string_literal: true

Rails.application.routes.draw do
  # devise_scope :user do
  #   get '/' => 'devise/sessions#new'
  # end
  root to: 'foods#index'
  get 'public_recipes/', to: 'public_recipes#index'
  get 'general_shopping_list/', to: 'general_shopping_list#index'
  get 'general_shopping_list/new'
  post 'general_shopping_list/create', to: 'general_shopping_list#create'
  get 'recipes/', to: 'recipes#index'
  get 'recipes/new'
  post 'recipes/create', to: 'recipes#create'
  delete 'recipes/destroy', to: 'recipes#destroy'
  get 'recipes/:id', to: 'recipes#show'
  get 'foods/', to: 'foods#index'
  get 'foods/new'
  post 'foods/create', to: 'foods#create'
  delete 'foods/destroy', to: 'foods#destroy'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
