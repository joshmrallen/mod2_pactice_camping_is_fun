Rails.application.routes.draw do
  resources :activities, only: [:index, :show, :new, :create, :edit, :update]
  resources :signups, only: [:new, :create]
  resources :campers, only: [:index, :show, :new, :create, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
