# create files for your ruby classes in this directory
class Listing
attr_accessor :city

    @@all = []
    def initialize(city)
        @city=city
        @@all << self 
    end 

    def self.all 
        @@all 
    end 

    def guests
        trips.map do |inst| inst.guest end.uniq
    end 

    def trips
        Trip.all.select do |inst| inst.listing == self end 
    end 

    def trip_count
        trips.count 
    end 

    def self.find_all_by_city(city)
        self.all.select do |inst| inst.city == city end 
    end 

    def self.most_popular
        self.all.max_by do |inst| inst.trip_count end 
    end 
end 