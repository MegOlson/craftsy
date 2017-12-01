Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'products#welcome'

  devise_for :users

  resources :products do
    resources :reviews
  end

end
