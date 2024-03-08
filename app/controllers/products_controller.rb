class ProductsController < ApplicationController
  before_action :authenticate_user!

  def index
    @products = Product.all
    @product = Product.new
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
  @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  private

  def product_params
    params.require(:product).permit(:title, :current_price, :previous_price, :image, :pro_description, :user_id)
  end
end
