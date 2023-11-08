Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :registrations#, only: [:create]
  resources :sessions#, only: [:create]
  resources :projects
  root "home_pages#index"
  get '/logout', to: 'sessions#destroy', as: :logout
end
