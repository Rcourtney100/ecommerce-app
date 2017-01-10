class CartsController < ApplicationController

 before_action :set_cart, only: [:show, :edit, :update, :destroy]

  def index
    @carts = Cart.all
  end

  def create
    @cart = Cart.create(cart_params)
    redirect_to @cart
  end

  def show

    @number_items = @cart.products.length
  end

  def destroy
    @cart.destroy
    redirect_to '/'
  end

  def new
    @cart = Cart.new
  end

  def edit
  end

  def update
    @cart.update(cart_params)
    redirect_to @cart
  end

   def add_to_cart
    @user = User.find(session[:user_id])
    @product = Product.find(params[:product_id]) 
    @user.cart.products.push(@product)
    redirect_to @user.cart
  end

  def remove_all_products_from_cart

    @user = User.find(session[:user_id])
    @user.cart.products = []
    redirect_to @user.cart
  end

  def remove_from_cart
    @user = User.find(session[:user_id])
    @product = Product.find(params[:product_id]) 
    @user.cart.products.delete(@product)
    redirect_to @user.cart
  end

private

  def order_params
    params.require(:cart).permit(:user_id)
  end

  def set_cart
    @cart = Cart.find(params[:id])
  end

end



