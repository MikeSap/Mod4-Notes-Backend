Rails.application.routes.draw do
  resources :notes
  resources :users, only: [:create]

  post "/login", to: "auth#login"
  get "/auto_login", to: "auth#auto_login"
  
  # get "/user_is_authed", to: "auth#user_is_authed"
  # post '/users/signup', to: 'users#signup'
  # get "/auto_login", to: "users#auto_login"
  # get "/user_is_authed", to: "users#user_is_authed"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
