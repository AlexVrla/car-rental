Rails.application.routes.draw do
  devise_for :users
  root to: 'bookings#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :bookings, only: %i[new create edit update show] do
    resources :cars, only: %i[index show]
  end
end
