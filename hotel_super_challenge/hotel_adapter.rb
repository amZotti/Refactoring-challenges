class HotelAdapter
  def initialize(raw_hotel_data)
    @name = raw_hotel_data["Hotel"]
    @city = raw_hotel_data["City"]
    @phone_number = raw_hotel_data["Phone Number"]
    @number_of_singles = raw_hotel_data["Number of Singles"]
    @number_of_doubles = raw_hotel_data["Number of Doubles"]
  end

  def name
    @name.strip
  end

  def city
    @city.strip
  end

  def phone_number
    @phone_number.to_s.gsub(/[^0-9]/, "")
  end

  def number_of_singles
    @number_of_singles.gsub(",","").to_i
  end

  def number_of_doubles
    @number_of_doubles.gsub(",","").to_i
  end

  def capacity
    number_of_doubles + number_of_singles
  end

end
