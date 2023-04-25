class SessionsController < ApplicationController
  def new
  end



  def create
    email = params[:email]
    password = params[:password]

    if email == "admin@gmail.com" && password == "123456789"
      redirect_to blogs_url
    else
      flash[:error] = "Invalid email or password."
      render :new
    end
  end

  def destroy
    session.delete(:admin_id)
    redirect_to root_path
  end
end
