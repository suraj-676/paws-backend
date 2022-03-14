#Resolving dependencies...
Rails.application.routes.draw do
  resources :users
  root to: "pages#home"
  resources :animals
  resources :donations

  get "/login" => "session#new"
  post "/login" => "session#create" #form submitts here

  delete "/login" => "session#destroy"
end
