class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def create
  end

  def show
    @product = Product.find(params[:id])
  end

  def destroy
  end
  	
  def new
  end

  def edit
  end

  def update
  end	
end
