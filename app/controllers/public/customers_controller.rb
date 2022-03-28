class Public::CustomersController < ApplicationController

  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
    @hsop_images = @customer.shop_images.page(params[:page])
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    @customer.update
    redirect_to public_shop_image_path(customer_params)
  end

  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy
    redirect_to public_customers_path
  end

  private

  def customer_params
    params.require(:customer).permit(:name, :profile_image, :email)
  end
end
