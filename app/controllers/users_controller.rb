class UsersController < ApplicationController
  def create
    user = User.new(

    name: params[:name],
    email: params[:email],
    password: params[:password],
    password_confirmation: params[:password_confirmation]
    )
    if user.save
render json: { message: "user Created!" }, status: :created
    else
      render json: { error: user.errors.full_messages }, status: :bad_request
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update(
      name: params[:name] || @user.name,
      email: params[:email] || @user.email,
      password: params[:password] || @user.password,
      password_confirmation: params[:password_confirmation] || @user.password_confirmation,
      admin: params[:update] || @user.admin
      )

      render json: { message: "User Updated" }
    end
end
