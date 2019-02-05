class Driver
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def self.all
        Ride.all.map {|ride| ride.driver}.uniq
    end

    def rides
        Ride.all.select {|ride|
            ride.driver == self
        }
    end

    def self.mileage_cap(distance)
        Ride.all.select {|ride|
            ride.distance > distance
        }.map {|ride|
            ride.driver
        }
    end
end