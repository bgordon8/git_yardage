Rails.application.routes.draw do
  resources :scores
  resources :coords
  resources :holes
  resources :courses
  resources :users, only: [:index, :create]

  post '/login', to: 'authentication#login'
  post '/register', to: 'authentication#register'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
