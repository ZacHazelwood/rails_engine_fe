class MerchantFacade

  def self.get_all_merchants
    json = RailsEngineService.get_rails_engine_data('merchants')
    data = json[:data]
    merchants = data.map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end

  def self.get_one_merchant(merchant_id)
    json = RailsEngineService.get_rails_engine_data("merchants/#{merchant_id}")
    data = json[:data]
    Merchant.new(data)
  end

  def self.get_all_merchant_items(merchant_id)
    json = RailsEngineService.get_rails_engine_data("merchants/#{merchant_id}/items")
    data = json[:data]
    items = data.map do |item_data|
      Item.new(item_data)
    end
  end
end
