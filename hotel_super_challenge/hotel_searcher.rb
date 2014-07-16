class HotelSearcher

  MESSAGE = "What property? > "

  def initialize(hotel_data)
    @user_query = ''
    @hotels = hotel_data[:hotels]
  end

  def find
    query_user_for_hotel_name
    display_query_results(valid_hotel)
  end 

  def query_user_for_hotel_name
    puts MESSAGE
    user_input
  end

  def user_input
    @user_query = gets.chomp
  end

  def valid_hotel
    @hotels.find { |hotel| hotel.name == @user_query } || NilHotel.new(@user_query)
  end

  def display_query_results(hotel)
    hotel.exist
  end

end
