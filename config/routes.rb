Rails.application.routes.draw do
  
  resources :shits
  # root 'static#home' 
  root 'shits#new' 
  get "/show", to: "shits#index", as:'show_shits'

end
