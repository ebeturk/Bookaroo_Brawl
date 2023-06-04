Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :monsters
  # Defines the root path route ("/")
  root "pages#home"
  # root "articles#index"
end
