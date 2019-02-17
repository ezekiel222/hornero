Rails.application.routes.draw do
  resources :materials
  resources :products do
    put :favorite, on: :member
  end
  devise_for :users, controllers: {registrations: 'registrations'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  get 'home/carrito'
end
