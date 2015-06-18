Rails.application.routes.draw do
  
  resources :shits
  # root 'static#home' 
  root 'shits#new' 
  get "/show", to: "shits#index"
  get "/home", to: "static#home"


end
