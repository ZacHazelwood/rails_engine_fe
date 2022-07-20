require 'rails_helper'

RSpec.describe RailsEngineService do
  describe "rails engine endpoint" do
    it "establishes a connection" do
      conn = RailsEngineService.conn
      expect(conn.class).to eq(Faraday::Connection)
    end

    it "gets Merchant data from endpoint" do
      parsed_json = RailsEngineService.get_rails_engine_data('merchants')
      single_json = parsed_json[0]

      expect(parsed_json).to be_a Hash
      expect(parsed_json).to have_key :data
      expect(single_json[:data]).to have_key :id
      expect(single_json[:data]).to have_key :type
      expect(single_json[:data]).to have_key :attributes
      expect(single_json[:data][:attributes]).to have_key :name 
    end
  end
end
