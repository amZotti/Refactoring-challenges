require 'csv'

class HotelGenerator
  def initialize(csv_text)
    @csv_text = csv_text
  end

  def print_out_hotel_names
    csv = CSV.parse(@csv_text, :headers => true)
    csv.each do |row|
    puts row[0]
    end
  end
end


FILE_NAME = "hotel.csv"
csv_text = File.read(FILE_NAME)

hotel = HotelGenerator.new(csv_text)
hotel.print_out_hotel_names
