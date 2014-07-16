require './hotel_generator'
require './hotel'
require './hotel_searcher'
require './nil_hotel'
FILE_NAME = "hotel.csv"
hotel_generator = HotelGenerator.new(FILE_NAME, Hotel)
hotel_data = hotel_generator.generate_hotels
searcher = HotelSearcher.new(hotel_data)
searcher.find
