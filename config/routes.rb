Rails.application.routes.draw do

  #user
  post "/users" => "users#create"
  get "/users/" => "users#index"

  #sessions
  post "/sessions" => "sessions#create"
end
