class Guest
    attr_reader :name
    attr_accessor :trips, :listings

    @@all = []

    def initialize(name)
        @name = name

        @trips = []
        @listings = []

        @@all << self
    end

    def self.all
        @@all
    end

    def self.pro_traveler
        @@all.collect {|guest|
            guest.trip_count < 1
        }
    end

    def self.find_all_by_name(name)
        @@all.collect {|guest|
            guest.name == name
        }
    end

    def add_trip(listing)
        Trip.new(listing, self)
    end

    def trip_count
        @trips.length
    end
end