Rails.application.routes.draw do
  post "user_token" => "user_token#create"
  root to: "pages#home"
  get "/users/current" => "users#current"

  resources :users
  resources :animals
  resources :donations
  get "/admin/adoptions" => "admin#adoptions"
  get "/admin/animals" => "admin#show"
  post "/donations" => "donations#create"
  get "/admin/approve/:id" => "admin#approve"
  get "/animals/:id" => "animals#show"
  get "/animals" => "animals#index"
  post "/adoption/:id" => "animals#adopt"
  get "/login" => "session#new"
  post "/login" => "session#create" #form submitts here

  delete "/login" => "session#destroy"
end
