class Driver
    attr_accessor :distance, :name 

    @@all=[]

    def initialize(distance:, name:)
        @name = name 
        @distance= distance 
        @@all << self 
    end 

    def self.all
        @@all
    end 

    def rides
        Ride.all.select do |inst| inst.driver == self 
        end 
    end 

    def passengers
        rides.map do |inst| inst.passenger 
        end 
    end 

    def self.mileage_cap(distance)
        @@all.select do |inst| inst.distance > distance 
        end 
    end 
end 