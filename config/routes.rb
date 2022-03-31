Rails.application.routes.draw do
  root 'static_pages#index'
  get 'static_pages/logout', to: 'static_pages#logout'
end
