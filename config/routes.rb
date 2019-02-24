Rails.application.routes.draw do
  resources :materials
  resources :products do
    put :favorite, on: :member
  end
  resources :categories
  devise_for :users, controllers: {registrations: 'registrations'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "products#index"
  get 'home/favoritos'
end
