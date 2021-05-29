Rails.application.routes.draw do
  
  root "posts#index"
  devise_for :users, controllers: {registrations: 'registrations', sessions: 'sessions'}
  resources :posts, only: [:new, :create, :index]
end
