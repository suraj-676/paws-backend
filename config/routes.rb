#Resolving dependencies...
Rails.application.routes.draw do
  post "user_token" => "user_token#create"
  root to: "pages#home"
  resources :users
  resources :animals
  resources :donations
  get "/admin/adoptions" => "admin#adoptions"
  post "/donations" => "donations#create"
 
  get "/animals/:id" => "animals#show"
  get "/animals" => "animals#index"
  post "/adoption/:id" => "animals#adopt"
  get "/login" => "session#new"
  post "/login" => "session#create" #form submitts here

  delete "/login" => "session#destroy"
end
