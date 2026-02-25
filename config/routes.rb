Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root "static#home"

  get  "vision/new",     to: "vision#new",     as: :new_vision
  post "vision/analyze", to: "vision#analyze", as: :analyze_vision
  post "/telegram/webhook" => "telegram#webhook"

  get "kitch", to: "static#kitch_page"
  get "kitch_sections", to: "static#kitch_sections"
  get "home", to: "static#home"
  get "select_products", to: "static#select_products"
  get "products_step", to: "static#products_step"

  get "/planner", to: "static#planner", as: :planner
  get "/styleguide", to: "static#styleguide", as: :styleguide

  get "/flow-1", to: "onboarding#flow-1", as: :flow_1
  get "/flow-2", to: "onboarding#flow-2", as: :flow_2
  get "/flow-3", to: "onboarding#flow-3", as: :flow_3
  get "/flow-4", to: "onboarding#flow-4", as: :flow_4

  get "up" => "rails/health#show", as: :rails_health_check

  namespace :api do
    namespace :v1 do
      resources :recipes, only: [:index, :show, :create, :update, :destroy]
      resources :products, only: [:index, :show, :create, :update, :destroy]
    end
  end

  resources :tasks
end
