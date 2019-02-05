class Ride
    @@all = []

    attr_reader :driver, :passenger, :distance

    def initialize(distance, passenger, driver)
        @distance = distance
        @passenger = passenger
        @driver = driver

        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_distance
        total = self.all.map {|ride|
            ride.distance
        }.inject(:+)
        total / self.all.length
    end
end