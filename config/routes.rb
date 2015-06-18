Rails.application.routes.draw do
  
  resources :shits
  # root 'static#home' 
  root 'static#home' 
  get "/show", to: "shits#index", as:'show_shits'

end
