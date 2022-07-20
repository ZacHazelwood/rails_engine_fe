class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.get_all_merchants
  end

  def show
    @merchant = MerchantFacade.get_one_merchant(params[:id])
    @items = MerchantFacade.get_all_merchant_items(params[:id])
  end
end
