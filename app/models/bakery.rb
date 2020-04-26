class Bakery
    attr_accessor :name

    @@all= []

    def initialize(name:)
        @name= name
        @@all << self 
    end 

    def self.all
        @@all
    end 

    def desserts
        Desserts.all.select do |inst| inst.bakery == self end 
    end

    def ingredients
        desserts.map do |inst| inst.ingredients end 
    end 

    def average_calories
        total=0
        desserts.each do |inst| total += inst.calories end 
        average = total.to_f/desserts.count
        average 
    end 

    def shopping_list
        self.ingredients.flatten.map do |inst| inst.ingredient.to_s end
    end 
end 