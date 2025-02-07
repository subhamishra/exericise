Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      # devise_for :users
      resources :users
      resources :sessions, only: [:create, :destroy]
      resources :frames
      resources :lenses
    end
  end
end
