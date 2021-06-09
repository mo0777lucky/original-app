class FavoritesController < ApplicationController

  before_action :set_product

  def create
    #@favorite = Favorite.create(user_id: current_user.id, product_id: params[:product_id])
    #@favorites = Favorite.where(product_id: params[:product_id])
    #@products = Product.all
    @favorite = Favorites.create(user_id: current_user.id, product_id: @product.id)
  end

  def destroy
    @favorite = Favorite.find_by(user_id: current_user.id, product_id: @product.id)
    @favorite.destroy
    #favorite = Favorites.find_by(user_id: current_user.id, product_id: params[:product_id])
    #favorite.destroy
    #@favorites = Favorite.where(product_id: params[:product_id])
    #@products = Product.all
  end

  private
  def set_product
    @product = Pouct.find(params[:product_id])
  end

end