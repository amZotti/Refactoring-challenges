class NilHotel

  def initialize(invalid_search)
    @invalid_search = invalid_search
  end

  def exist
    puts "Hotel #{@invalid_search} does not exist"
  end
end
