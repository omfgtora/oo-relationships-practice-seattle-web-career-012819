class Listing
  attr_reader :name, :city
  attr_accessor :trips, :guests

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city

    @guests = []
    @trips = []

    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_all_by_city(city)
    @@all.collect { |listing|
      listing.city == city
    }
  end

  def self.most_popular
    # Most popular is sorta broken. Returns an array even if only one instance
    sorted = @@all.sort { |listing_one, listing_two|
      listing_two.trip_count <=> listing_one.trip_count
    }
    puts "Sorted first: #{sorted.first.name}"
    # this any? always results in true. dont know why
    if sorted.any? { |listing| listing.trip_count == sorted.first.trip_count }
      return sorted.select { |listing|
               listing.trip_count == sorted.first.trip_count
             }
    else
      return sorted.first
    end
  end

  def trip_count
    @trips.length
  end
end
