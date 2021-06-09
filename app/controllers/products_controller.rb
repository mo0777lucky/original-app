class ProductsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  
  def index
    @products = Product.all
    @products = Product.order("created_at DESC")
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
    @comment = Comment.new
    @comments = @product.comments.includes(:user)
    @favorite = Favorite.new
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

  def search
    @products = Product.search(params[:keyword])
    #@products = Product.search(params[:prefecture_id])
    #@products = Product.find(params[:prefecture_id])
  end

  private
  def product_params
    params.require(:product).permit(:title, :category_id, :description, :prefecture_id, :municipality, :image).merge(user_id: current_user.id)
  end

  #def collect_params
    #params.permit(:url, :prefecture_id)
  #end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
