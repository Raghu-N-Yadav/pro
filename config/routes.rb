Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#index"
  # get "/articles", to: "pages#index"
  # get "/demo", to: "pages#demo"

  # get "/articles/:id", to: "pages#show"

  resources :pages do 
    resources :comments
  end

end
