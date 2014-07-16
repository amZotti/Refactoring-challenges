require 'csv'
class HotelGenerator
  def initialize(csv_filename)
    @csv_filename = csv_filename
  end

  def print_out_hotel_names
    CSV.foreach(@csv_filename,headers: true) do |csv|
      puts csv[0]
    end
  end
end


FILE_NAME = "hotel.csv"

hotel = HotelGenerator.new(FILE_NAME)
hotel.print_out_hotel_names
