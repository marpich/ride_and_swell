Rails.application.routes.draw do
  root to: 'pages#home'
  resources :equipments, only:[:new, :create, :show, :index] do
    resources :bookings, only:[:create]
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
