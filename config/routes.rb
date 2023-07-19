Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "monsters/den", to: "monsters#den", as: 'monster_den'
  resources :books
  resources :monsters do
    resources :books
    resources :monster_books, only: [:index, :new, :create, :destroy]
  end

  # Defines the root path route ("/")
  root "pages#home"
  # root "articles#index"

end
