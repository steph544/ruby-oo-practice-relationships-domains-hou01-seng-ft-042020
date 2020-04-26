class Ride
    attr_accessor :distance, :passenger, :driver

    @@all=[]

    def initialize(distance:, passenger:, driver:)
        @distance=distance
        @passenger= passenger
        @driver= driver  
        @@all << self 
    end 

    def self.all
        @@all
    end 

    def self.total
        total=0
        self.all.each do |inst| total += inst.distance
        end 
        total 
    end 

    def self.average_distance
        average= self.total/self.all.count
        average
    end 
end 