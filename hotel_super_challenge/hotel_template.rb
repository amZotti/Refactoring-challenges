require 'csv'
class HotelTemplate
  def initialize(raw_hotel_data)
    @name = raw_hotel_data[0]
    @city = raw_hotel_data[1]
    @phone_number = raw_hotel_data[2]
    @number_of_single_beds = raw_hotel_data[3]
    @number_of_double_beds = raw_hotel_data[4]
  end

  attr_reader :name, :city, :phone_number, :number_of_single_beds, :number_of_double_beds
end
