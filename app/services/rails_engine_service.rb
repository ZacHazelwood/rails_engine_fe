class RailsEngineService

  def self.conn
    Faraday.new('http://localhost:3000/api/v1')
  end

  def self.get_rails_engine_data(uri)
    response = conn.get(uri)
    JSON.parse(response.body, symbolize_names: true)
  end
end
