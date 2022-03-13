class Public::CustomerController < ApplicationController
  def show
    @customer = Csutomer.find(params[:id])
    @shop_images = @customer.shop_images
  end

  def edit
    @customer = Csutomer.find(params[:id])
  end
  
  def update
    @customer = Customer.find(params[:id])
    @customer.update
    redirect_to public_shop_image_path(customer_params)
  end


  private

  def customer_params
    params.require(:customer).permit(:name, :profile_image)
  end
end
