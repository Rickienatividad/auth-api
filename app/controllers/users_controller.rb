class UsersController < ApplicationController
  def create
    user = User.new(
      name: params["name"],
      email: params["email"],
      password: params["password"],
      password_confirmation: params["password_confirmation"],
    )
    if user.save
      render json: user.as_json
    else
      render json: { errors: user.errors.full_messages }
    end
  end

  def index
    if current_user
      render json: { message: "you have been authenticated and are able to view this page." }
    else
      render json: { message: "you are not authorized to view this. Please log in." }
    end
  end
end
