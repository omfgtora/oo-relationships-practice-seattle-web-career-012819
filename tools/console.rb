require_relative "../config/environment.rb"

def reload
  load "config/environment.rb"
end

#
# Airbnb Tests
#

# Listings
mcmelon_mansion = Listing.new("McMelon Mansion", "Los Angeles")
two_mansion = Listing.new("Two Mansion", "San Francisco")
lagges_house = Listing.new("Lagges House", "Seattle")
one_house = Listing.new("One House", "Dallas")
two_house = Listing.new("Two House", "San Francisco")
blue_apartment = Listing.new("Blue Apartment", "New York")
koszarek_condo = Listing.new("Koszarek Condo", "New Orleans")

# Guests
steve = Guest.new("Steve Jobs")
al = Guest.new("Al Yankovic")
paul = Guest.new("Paul Atreides")
duncan = Guest.new("Duncan Idaho")
brawne = Guest.new("Brawne Lamia")
buchemi = Guest.new("Steve Buchemi")

# Trips
steve.add_trip(mcmelon_mansion)
steve.add_trip(two_mansion)
steve.add_trip(lagges_house)
al.add_trip(one_house)
al.add_trip(koszarek_condo)
paul.add_trip(mcmelon_mansion)
paul.add_trip(two_house)
# duncan.add_trip(koszarek_condo)
brawne.add_trip(blue_apartment)

# Tests
all_listings = Listing.all
puts "All listings:"
for each in all_listings
  puts "    #{each.name}"
end
puts "\n"
most_popular = Listing.most_popular
# if most_popular.length > 1
#   puts "The most popular listings have #{most_popular[0].trip_count} trips total:"
#   most_popular.each { |each| puts "    #{each.name}" }
# else
#   puts "Most Popular Listing is the #{most_popular.name} with #{most_popular.trip_count} trips."
# end
Listing.find_all_by_city("Lost Angeles")
Guest.all
Guest.pro_traveler
Guest.find_all_by_name("Steve Jobs")

#
# IMDB Tests
#

# We want to use SNL as an example for a show that has many actors
# that have also been in movies.

bill_murray = Actor.new("Bill Murray")
andie_macdowell = Actor.new("Andie MacDowell")
groundhog_day = Movie.new("Groundhog Day")
groundhog_day.add_character("Phil Connors", "Bill Murray")

#
# Lyft Tests
#

# Passengers
skywalker = Passenger.new("Luke Skywalker")
solo = Passenger.new("Han Solo")
leia = Passenger.new("Leia Solo")
rey = Passenger.new("Rey")

# Driver
chewie = Driver.new("Chewbacca")
c3po = Driver.new("C3PO")
r2d2 = Driver.new("R2D2")

# Rides (distance (float), passenger, driver)
Ride.new(10.0, skywalker, chewie)
Ride.new(20.0, leia, c3po)
Ride.new(15.0, solo, chewie)
Ride.new(5.0, skywalker, r2d2)


puts "\n\nPassengers:"
Passenger.all.each {|passenger|
  puts "  " + passenger.name
}
puts "\nDrivers:"
Driver.all.each {|driver|
  puts "  " + driver.name
}

# Ride distance
puts "\n Rides distance:"
puts "  Skywalker total: " + skywalker.total_distance.to_s
puts "  Leia total: " + leia.total_distance.to_s
puts "  Han total: " + solo.total_distance.to_s
puts "  Rey total: " + rey.total_distance.to_s

puts "\n Average Distance: " + Ride.average_distance.to_s

puts "\n Mileage cap 5: "
Driver.mileage_cap(5).each {|driver|
  puts "  " + driver.name
}
puts "\n Mileage cap 10: "
Driver.mileage_cap(10).each {|driver|
  puts "  " + driver.name
}
puts "\n Mileage cap 15: "
Driver.mileage_cap(15).each {|driver|
  puts "  " + driver.name
}

# Pry.start
