Rails.application.routes.draw do
  devise_for :users
  resources :users do
    resources :produtos
    resources :recipes
  end
  resources :recipes do
    resources :item_recipes
  end
  resources :area
  root to: "area#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
