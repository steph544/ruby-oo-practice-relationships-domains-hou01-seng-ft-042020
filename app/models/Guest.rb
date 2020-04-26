class Guest
    attr_accessor :name
    
        @@all = []
        def initialize(name)
            @name=name
            @@all << self 
        end 
    
        def self.all 
            @@all 
        end 

        def listings
            trips.map do |inst| inst.listing end 
        end 

        def trips
            Trip.all.select do |inst| inst.guest == self end
        end 

        def trip_count
            trips.count 
        end 

        def self.pro_traveller 
            self.all.select do |inst| inst.trip_count > 1 end 
        end 

        def self.find_all_by_name(name)
            self.all.select do |inst| inst.name == name end 
        end 
    end 