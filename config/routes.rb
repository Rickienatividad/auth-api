Rails.application.routes.draw do

  #user
  post "/users" => "users#create"

  #sessions
  post "/sessions" => "sessions#create"
end
