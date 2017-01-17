class UsersController < ApplicationController
  
before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
    @user = User.new
  end

  def create

    @user = User.create(user_params) 
    Wishlist.create(user_id: @user.id)
    Cart.create(user_id: @user.id)
    if @user.save
    session[:user_id] = @user.id
    redirect_to @user 
  else 
    flash[:notice] = "User already created"
    render new_user_path
  end
end

  def edit
  end

  def update
    @user.update(user_params)
    redirect_to @user
  end

  def destroy
    @user.destroy
    redirect_to '/'
  end

  def show
    @wishlist = @user.wishlist
    @cart = @user.cart
  end

  def new
    @user = User.new
  end

private

def user_params
  params.require(:user).permit(:fname, :lname, :address, :email, 
    :password)
end

def set_user
@user = User.find(params[:id])
end

end