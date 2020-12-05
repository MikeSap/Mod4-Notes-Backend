Rails.application.routes.draw do
  resources :notes
  resources :users
  # get '/users/signup', to: 'users#signup'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
