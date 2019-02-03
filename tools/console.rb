require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#
# airbnb tests
#

# Listings
mcmelon_mansion = Listing.new('McMelon Mansion', 'Los Angeles')
two_mansion = Listing.new('Two Mansion', 'San Francisco')
lagges_house = Listing.new('Lagges House', 'Seattle')
one_house = Listing.new('One House', 'Dallas')
two_house = Listing.new('Two House', 'San Francisco')
blue_apartment = Listing.new('Blue Apartment', 'New York')
koszarek_condo = Listing.new('Koszarek Condo', 'New Orleans')

# Guests
steve = Guest.new('Steve Jobs')
al = Guest.new('Al Yankovic')
paul = Guest.new('Paul Atreides')
duncan = Guest.new('Duncan Idaho')
brawne = Guest.new('Brawne Lamia')
buchemi = Guest.new('Steve Buchemi')


# Trips
steve.add_trip(mcmelon_mansion)
steve.add_trip(two_mansion)
steve.add_trip(lagges_house)
al.add_trip(one_house)
al.add_trip(koszarek_condo)
paul.add_trip(mcmelon_mansion)
paul.add_trip(two_house)
# duncan.add_trip(koszarek_condo)
brawne .add_trip(blue_apartment)

# Tests
all_listings = Listing.all
puts "All listings:"
for each in all_listings
  puts "    #{each.name}"
end
puts "\n"
most_popular = Listing.most_popular
if most_popular.length > 1
  puts "The most popular listings have #{most_popular[0].trip_count} trips total:"
  most_popular.each {|each| puts "    #{each.name}"}
else
  puts "Most Popular Listing is the #{most_popular.name} with #{most_popular.trip_count} trips."
end
Listing.find_all_by_city("Lost Angeles")
Guest.all
Guest.pro_traveler
Guest.find_all_by_name("Steve Jobs")

# 

# Pry.start
