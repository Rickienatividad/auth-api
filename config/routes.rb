Rails.application.routes.draw do

  #user
  post "/users" => "users#create"
end
