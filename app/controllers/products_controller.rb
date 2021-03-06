class ProductsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  impressionist :actions => [:show]

  def index
    @products = Product.all
    @products = Product.order("updated_at DESC")
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
    impressionist(@product, nil, unique: [:session_hash])
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
  end

  private
  def product_params
    params.require(:product).permit(:title, :category_id, :description, :prefecture_id, :municipality, :recommendation_id, :image).merge(user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
