class Public::ShopCommentsController < ApplicationController

  def create
    shop_image = ShopImage.find(params[:shop_image_id])
    comment = current_customer.shop_comments.new(shop_comment_params)
    comment.shop_image_id = shop_image.id
    comment.save
    redirect_to public_shop_image_path(shop_image)
  end

  def destroy
    ShopComment.find(params[:shop_comment_id]).destroy
    redirect_to public_shop_image_path(params[:shop_image_id])
  end

  private

  def shop_comment_params
    params.require(:shop_comment).permit(:comment)
  end

end
