class SessionsController < ApplicationController
  # def create
  #   puts "-------------------"
  #   pp current_user
  #   puts "-------------------"
  #   user = User.find_by(email: params[:email])
  #   if user && user.authenticate(params[:password])
  #     cookie = { value: user.id }
  #     cookies.signed[:user_id] = cookie.merge(cookie_settings)
  #     render json: { email: user.email, user_id: user.id }, status: :created
  #   else
  #     render json: { message: "Wrong user name or password" }, status: :unauthorized
  #   end
  # end

  def create
  user = User.find_by(email: params[:email])
  if user && user.authenticate(params[:password])
    render json: user.as_json(only: [ :id, :name, :email ])
  else
    render json: { errors: [ "Invalid email or password" ] }, status: :unauthorized
  end
end


  def destroy
    cookies.delete(:user_id, cookie_settings)
    render json: { message: "Logged Out Successfully" }
  end

    private

  def cookie_settings
    if Rails.env.test?
      { httponly: true }
    else
      { httponly: true, secure: true, same_site: "None" }
    end
  end
end
