Rails.application.routes.draw do
  root 'users#show'
  get 'home', to: 'static_pages#index'
  get 'static_pages/logout', to: 'static_pages#logout'
  devise_for :users, :controllers => {
    :registrations => 'users/registrations'
  }
  # get 'users/show'
  # root 'static_pages#index'
  # get 'static_pages/logout', to: 'static_pages#logout'
  # devise_for :users, :controllers => {
  #   :registrations => 'users/registrations'
  # }
end
