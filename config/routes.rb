Rails.application.routes.draw do
      resources :user_cleanups
      resources :users
      resources :cleanups
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

# resources :users, only: [:index, :show, :create, :update, :destroy]
# resources :cleanups, only: [:index, :show, :create, :update, :destroy]
