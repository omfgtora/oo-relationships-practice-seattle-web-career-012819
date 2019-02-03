class Trip
    attr_reader :guest, :listing

    @@all = []

    def initialize(listing, guest)
        @listing = listing
        @guest = guest

        listing.trips << self
        guest.trips << self
        @@all << self
    end

    def self.all
        @@all
    end
end