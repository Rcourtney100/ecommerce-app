class LoginController < ApplicationController
  def index
  end

  def create
@user = User.where(email: params[:email]).first
    if @user && @user.password == params[:password]
     session[:user_id] = @user.id
      redirect_to @user
  end
end
end

  def edit
  end

  def update
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

  def show
  end

  def new
  end
