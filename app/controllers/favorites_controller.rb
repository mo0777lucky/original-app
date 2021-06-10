class FavoritesController < ApplicationController

  before_action :set_variables
  
  def create
    favorite = current_user.favorites.new(product_id: @product.id)
    favorite.save
    #Favorite.create(user_id: current_user.id, product_id: params[:id])
    #redirect_to products_path
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
    favorite = current_user.favorites.find_by(product_id: @product.id)
    favorite.destroy
    #Favorite.find_by(user_id: current_user.id, product_id: params[:id]).destroy
    #redirect_to products_path
    #favorite = current_user.favorites.find_by(product_id: @product.id)
    #favorite.destroy
    #def destroy
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

  private

  def set_variables
    @product = Product.find(params[:product_id])
  end
end