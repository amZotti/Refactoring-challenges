require 'csv'
require './hotel_template.rb'
class HotelManager
  def initialize(csv_filename, hotel_template)
    @csv_filename = csv_filename
    @hotels = []
    @hotel_template = hotel_template
  end

  def generate_hotels()
    CSV.foreach(@csv_filename,headers: true) do |raw_hotel_data|
      create_hotel(raw_hotel_data)
    end
  end

  def create_hotel(raw_hotel_data)
    @hotels << @hotel_template.new(raw_hotel_data)
  end

  def search
    #ask user for hotel name
#    ask_user_for_hotel
    #find hotel object
 #   find_hotel
    #return hotel object
  #  display_hotel
  end
end

FILE_NAME = "hotel.csv"
hotel_manager = HotelManager.new(FILE_NAME, HotelTemplate)
hotel_manager.generate_hotels()
hotel_manager.search
