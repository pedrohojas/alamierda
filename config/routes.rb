Rails.application.routes.draw do
  
  resources :shits do
    get 'random', on: :collection
  end

  root 'shits#new' 
  get "/show", to: "shits#index", as:'show_shits'
  get "/random", to: "shits#random_show", as: 'random_show_shits'
end
