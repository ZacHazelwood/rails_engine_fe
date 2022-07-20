require 'rails_helper'

RSpec.describe MerchantFacade do
  it "gets all merchants" do
    merchants = MerchantFacade.get_all_merchants

    expect(merchants).to be_a Array
    expect(merchants).to be_all Merchant
  end

  it "gets one merchant" do
    merchant = MerchantFacade.get_one_merchant('1')

    expect(merchant).to be_a Merchant
  end

  it "gets a merchant's items" do
    items = MerchantFacade.get_all_merchant_items('1')

    expect(items).to be_a Array
    expect(items).to be_all Item
  end
end
