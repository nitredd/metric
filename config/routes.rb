Rails.application.routes.draw do
  resources :meters do
    resources :readings
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "meters#index"
end
