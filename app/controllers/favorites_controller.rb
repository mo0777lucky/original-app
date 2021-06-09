class FavoritesController < ApplicationController

  before_action :set_product

  def create
    #Favorite.create(user_id: current_user.id, product_id: params[:id])
    #redirect_to request.referer
    @favorite = current_user.favorites.create(product_id: params[:product_id])
    redirect_back(fallback_location: root_path)
    #favorite.save
    #def create
   #@favorite = Favorite.create(user_id: current_user.id, product_id: params[:product_id])
    #@favorites = Favorite.where(product_id: params[:product_id])
    #@products = Product.all
    #@product = Product.find(params[:product_id])
    #current_user.favorite(@product)
    #@favorite = Favorites.create(user_id: current_user.id, product_id: @product.id)
  end

  def destroy
    Favorite.find_by(user_id: current_user.id, product_id: params[:id]).destroy
    redirect_to request.referer
    #favorite = current_user.favorites.find_by(product_id: @product.id)
    #favorite.destroy
    #def destroy
    @favorite = Favorite.find_by(product_id: params[:product_id], user_id: current_user.id)
    @favorite.destroy
    redirect_back(fallback_location: root_path)
    #favorite = Favorites.find_by(user_id: current_user.id, product_id: params[:product_id])
    #favorite.destroy
    #@favorites = Favorite.where(product_id: params[:product_id])
    #@products = Product.all
    #@product = current_user.favorite_products.find(params[:id])
    #current_user.unfavorite(@product)
  end

  #private
  #def set_product
    #@product = Product.find(params[:product_id])
    #@id_name = "#favorite-link-#{@product.id}"
  #end
  #def set_product
    #@product = Pouct.find(params[:product_id])
  #end

end