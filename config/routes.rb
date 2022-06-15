Rails.application.routes.draw do
  resources :purchases do
    member do
      post :capture
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "purchases#index"

end
