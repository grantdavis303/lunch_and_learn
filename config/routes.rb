Rails.application.routes.draw do
  # root "posts#index"

  namespace :api do
    namespace :v1 do
      resources :learning_resources, only: [:index]
      resources :recipes, only: [:index]
      resources :users, only: [:create]
    end
  end
end