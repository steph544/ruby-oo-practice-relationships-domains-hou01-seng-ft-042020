class Desserts
    attr_accessor :bakery 

    @@all= []

    def initialize(name:, bakery:)
    @name=name
    @bakery=bakery 
    @@all << self 
    end 

    def self.all
        @@all
    end 

    def ingredients
        Ingredient.all.select do |inst| inst.dessert == self end 
    end 

    def calories
        total=0
        ingredients.each do |inst| total += inst.calorie_count end 
            total 
    end 
    
end 