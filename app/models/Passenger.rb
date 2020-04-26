class Passenger
    attr_accessor :name 

    @@all=[]

    def initialize(name:)
        @name=name 
        @@all << self 
    end 

    def self.all
        @@all
    end 

    def rides
        Ride.all.select do |inst| inst.passenger == self 
        end 
    end 

    def total_distance
        total = 0
        self.rides.map do |inst| total += inst.distance 
        end 
        total 
    end 

    def self.premium_members
        @@all.select do |inst| inst.total_distance > 100
        end 
    end 
end 