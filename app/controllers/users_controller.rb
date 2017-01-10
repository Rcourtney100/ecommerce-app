class UsersController < ApplicationController
  
before_action :set_user, only: [:show, :edit, :update, :destroy]



  def index
  end

  def create
    @user = User.new(user_params) 
    if @user.save
    Cart.create(user_id: @user.id)
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

    @user.update
    redirect_to @user
  end

  def destroy
  
    @user.destroy
    redirect_to user_path
  end

  def show
  end

  def new
    @user = User.new
  end

private

def user_params
  params.require(:user).permit(:fname, :lname, :address, :email, 
    :password)
end

def create_users_cart
  Cart.create(user_id: @user_id)
end  

def set_user

@user = User.find(params[:id])

end
end