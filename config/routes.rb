Rails.application.routes.draw do
  
  root "main#home"
  devise_for :users, controllers: {registrations: :registrations}
  resources :posts, only: [:new, :create, :index]
end
