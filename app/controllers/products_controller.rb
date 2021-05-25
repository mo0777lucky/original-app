class ProductsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
    if current_user.id != @product.user_id
      redirect_to root_path
    end 
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    product = Product.find(params[:id])
    product.destroy
    redirect_to root_path
  end

  private
  def product_params
    params.require(:product).permit(:title, :category_id, :description, :prefecture_id, :municipality, :image).merge(user_id: current_user.id)
  end
end
