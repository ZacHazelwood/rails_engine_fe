class Merchant

  attr_reader :id,
              :name,
              :type

  def initialize(data)
    @id = data[:id].to_i
    @type = data[:type]
    @name = data[:attributes][:name]
  end
end
