Rails.application.routes.draw do
  
  root "posts#index"
  devise_for :users, controllers: {registrations: :registrations}
  resources :posts, only: [:new, :create, :index]
end
