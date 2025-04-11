Rails.application.routes.draw do
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'

  get "up" => "rails/health#show", as: :rails_health_check

  post "/signup", to: "auth#signup"
  post "/login", to: "auth#login"
  get "/me", to: "auth#me"

  resources :posts do
    resources :comments, only: [:create]
  end

  resources :comments, only: [:update, :destroy]

  # root "posts#index"
end
