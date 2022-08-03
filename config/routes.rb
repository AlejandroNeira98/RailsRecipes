Rails.application.routes.draw do
  get 'public_recipes/index'
  get 'general_shopping_list/index'
  get 'general_shopping_list/new'
  get 'general_shopping_list/create'
  get 'recipes/index'
  get 'recipes/new'
  get 'recipes/create'
  get 'recipes/destroy'
  get 'recipes/show'
  get 'foods/index'
  get 'foods/new'
  get 'foods/create'
  get 'foods/destroy'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "home#index"
end
