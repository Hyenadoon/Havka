Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root "vision#new"

  get  "vision/new",     to: "vision#new",     as: :new_vision
  post "vision/analyze", to: "vision#analyze", as: :analyze_vision
  post "/telegram/webhook" => "telegram#webhook"

  get 'kitch', to: 'static#kitch_page'
  get 'kitch_sections', to: 'static#kitch_sections'
  get 'home', to: 'static#home'
  get 'select_products', to: 'static#select_products'
  get 'products_step', to: 'static#products_step'
 
  get "up" => "rails/health#show", as: :rails_health_check
  
  namespace :api do
    namespace :v1 do
      resources :recipes, only: [:index, :show]
      resources :products, only: [:index, :show]
    end
  end

  resources :tasks
end
