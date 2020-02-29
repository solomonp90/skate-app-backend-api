Rails.application.routes.draw do
  resources :posts
  resources :spots
  resources :skaters
  post '/login', to: 'login#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
