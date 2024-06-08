Rails.application.routes.draw do
  # root "posts#index"

  namespace :api do
    namespace :v1 do
      resources :recipes, only: [:index]
    end
  end
end