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
    @product = Product.create(product_params)
    redirect_to @product
  end

  def show
    @product = Product.find(params[:id])
  end

  def destroy
  end
  	
  def new
    @product = Product.new
  end

  def edit
  end

  def update
    @product.update
    redirect_to @product
  end	

private

  def product_params
    params.require(:user).permit(:description)
  end

  def set_product
    @product = Product.find(params[:id])
  end

end
