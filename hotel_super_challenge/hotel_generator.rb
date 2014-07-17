require 'csv'

class HotelGenerator
  def initialize(csv_filename, hotel_template)
    @csv_filename = csv_filename
    @hotels = []
    @hotel_template = hotel_template
  end

  def generate_hotels
    CSV.foreach(@csv_filename,headers: true) do |raw_hotel_data|
      create_hotel_objects(raw_hotel_data)
    end
    @hotels
  end

  def create_hotel_objects(raw_hotel_data)
    @hotels << @hotel_template.new(raw_hotel_data)
  end
end

