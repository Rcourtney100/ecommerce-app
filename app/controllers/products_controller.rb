class ProductsController < ApplicationController
  def index
    @products = Product.all
    if params[:search]
      @products = Product.search(params[:search]).order("created_at DESC")
    else
      @products = Product.all.order("created_at DESC")  
  end
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
