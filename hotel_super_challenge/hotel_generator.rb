require 'csv'
require './hotel_adapter'

class HotelGenerator
  def initialize(csv_filename)
    @csv_filename = csv_filename
    @hotels = []
  end

  def generate_hotels
    CSV.foreach(@csv_filename,headers: true) do |raw_hotel_data|
      hotel_adapter = HotelAdapter.new(raw_hotel_data)
      @hotels << Hotel.new(hotel_adapter)
    end
    @hotels
  end
end

