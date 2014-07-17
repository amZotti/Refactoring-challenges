class Hotel
  def initialize(hotel_adapter)
    @name = hotel_adapter.name
    @city = hotel_adapter.city
    @phone_number = hotel_adapter.phone_number
    @number_of_single_beds = hotel_adapter.number_of_singles
    @number_of_double_beds = hotel_adapter.number_of_doubles
    @capacity = hotel_adapter.capacity

  end

  attr_reader :name, :city, :phone_number, :number_of_singles, :number_of_doubles, :capacity

  def exist
    puts
    puts "Phone number: #{phone_number}"
    puts "Location: #{city}"
    puts "Number of rooms: #{capacity}"
  end
end
