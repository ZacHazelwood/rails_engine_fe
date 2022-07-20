require 'rails_helper'

Rspec.describe MerchantsFacade do
  it "gets all merchants" do
    merchants = MerchantFacade.get_all_merchants

    expect(merchants).to be_a Array
    expect(merchants).to be_all Merchant
  end

  it "gets one merchant" do
    merchant = MerchantFacade.get_one_merchant

    expect(merchant).to be_a Merchant
  end

  it "gets a merchant's items" do
    items = MerchantFacade.get_all_merchant_items

    expect(items).to be_a Array
    expect(items).to be_all Item
  end
end
