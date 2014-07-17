class NullHotel
  def initialize(invalid_query)
    @invalid_query = invalid_query
  end

  def exist
    puts "Hotel #{@invalid_query} does not exist"
  end
end
