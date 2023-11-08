Rails.application.routes.draw do
  get 'sessions/create'
  get 'registrations/create'
  get 'registration/create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home_pages#index"
end
