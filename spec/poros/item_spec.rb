require 'rails_helper'

RSpec.describe Item do
  it "exists and has attributes" do
    merchant_data = {
      id: "1",
      type: 'merchant',
      attributes: {
        name: 'Store'
      }
    }

    merchant = Merchant.new(merchant_data)

    item_data = {
      id: "1",
      type: 'item',
      attributes: {
        name: 'Boots',
        description: "You wear them on your feet.",
        unit_price: 39.99,
        merchant_id: merchant.id.to_i
      }
    }

    item = Item.new(item_data)

    expect(item).to be_a Item
    expect(item.id).to eq 1
    expect(item.type).to eq "item"
    expect(item.name).to eq "Boots"
    expect(item.description).to eq "You wear them on your feet."
    expect(item.unit_price).to eq 39.99
    expect(item.merchant_id).to eq 1
  end
end
