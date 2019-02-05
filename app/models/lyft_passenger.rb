class Passenger
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def self.all
        Ride.all.map {|ride| ride.passenger}.uniq
    end

    def rides
        Ride.all.select {|ride|
            ride.passenger == self
        }
    end

    def total_distance
        if self.rides.length > 0
            self.rides.map{|ride|
                ride.distance
            }.inject(:+)
        end
    end
end