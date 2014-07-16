class HotelSearcher

  MESSAGE = "What property? > "

  def initialize(hotel_data)
    @user_query = ''
    @hotels = hotel_data[:hotels]
  end

  def find
    query_user_for_hotel_name
    display_query_results(hotel_name_valid)
  end 

  def query_user_for_hotel_name
    puts MESSAGE
    user_input
  end

  def user_input
    @user_query = gets.chomp
  end

  def hotel_name_valid
    (@hotels.find { |hotel| hotel.name == @user_query }).name + " exists"|| "Hotel #{@user_query} not found"
  end

  def display_query_results(hotel_name)
    puts hotel_name
  end

end
