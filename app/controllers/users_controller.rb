class UsersController < ApplicationController
  
before_action :set_user, only: [:show, :edit, :update, :destroy]


  def index
  end

  def create
    @user = User.create(user_params) 
    Cart.create(user_id: @user.id)
    redirect_to @user 
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