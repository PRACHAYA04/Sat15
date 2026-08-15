class SessionsController < ApplicationController

  def new
  end

  def create
    email = params[:email]
    password = params[:password]

    if email == "admin@gmail.com" && password == "123456"
      session[:user_email] = email
      redirect_to products_path, notice: "Login successful!"
    else
      flash.now[:alert] = "Invalid email or password"
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    session.delete(:user_email)
    redirect_to login_path, notice: "Logged out successfully."
  end

end
