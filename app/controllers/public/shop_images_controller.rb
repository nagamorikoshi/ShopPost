class Public::ShopImagesController < ApplicationController
  def new
    @shop_image = ShopImage.new
  end

  def create
    @shop_image = ShopImage.new(shop_image_params)
    @shop_image.customerid = current_customer.id
    if @shop_image.save
      redirect_to public_shop_images_path
    else
      render :new
    end
  end

  def index
    @shop_images = ShopImage.all
  end

  def show
    @shop_image = ShopImage.find(params[:id])
    @shop_comment = ShopComment.new
  end

  def edit
    @shop_image = ShopImage.find(params[:id])
  end

  def update
    @shop_image = ShopImage.find(params[:id])
    @shop_image.update
    redirect_to public_shop_image_path(shop_image_params)
  end

  def destroy
    @shop_image = ShopImage.find(params[:id])
    @shop_image.destroy
    redirect_to public_shop_images_path
  end

  private

  def shop_image_params
    params.require(:shop_image).permit(:name, :caption)
  end
end
