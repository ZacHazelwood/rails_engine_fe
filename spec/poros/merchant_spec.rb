require 'rails_helper'

RSpec.describe Merchant do
  it "exists and has attributes" do
    data = {
      id: "1",
      type: 'merchant',
      attributes: {
        name: 'Store'
      }
    }

    merchant = Merchant.new(data)

    expect(merchant).to be_a Merchant
    expect(merchant.id).to eq 1
    expect(merchant.type).to eq 'merchant'
    expect(merchant.name).to eq 'Store'
  end
end
