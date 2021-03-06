class Public::FavoritesController < ApplicationController

  def create
    @shop_image = ShopImage.find(params[:shop_image_id])
    favorite = current_customer.favorites.new(shop_image_id: @shop_image.id)
    favorite.save
  end

  def destroy
    @shop_image = ShopImage.find(params[:shop_image_id])
    favorite = current_customer.favorites.find_by(shop_image_id: @shop_image.id)
    favorite.destroy
  end


end
