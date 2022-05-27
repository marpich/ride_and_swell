Rails.application.routes.draw do
  namespace :owner do
    get 'equipments/new'
    get 'equipments/create'
  end
  devise_for :users
  root to: 'pages#home'

  namespace :owner do
    resources :equipments, only: [:new, :create, :index]
    resources :bookings, except: [:show, :index, :new, :create, :destroy, :update, :edit] do
      member do
        patch :reject
        patch :accept
      end
    end
  end

  resources :equipments, only: [:show, :index] do
    resources :bookings, only: [:create]
  end

  get "/dashboard", to: "users#dashboard"

  # post "/owner/bookings/:id/reject", to: "bookings#reject"
  # post "/owner/bookings/:id/accept", to: "bookings#accept"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
