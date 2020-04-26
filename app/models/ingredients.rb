class Ingredient
    attr_accessor :calorie_count, :ingredient, :dessert

    @@all= []

    def initialize(ingredient:, calorie_count:, dessert:)
        @ingredient= ingredient
        @calorie_count=calorie_count
        @dessert=dessert
        @@all << self 
    end 

    def self.all
        @@all
    end 

    # def dessert 
    #     Desserts.all.select do |inst| inst.ingredient == self end 
    # end 

    def self.find_all_by_name(ingredient)
        self.all.select do |inst| if inst.ingredient.include? "#{ingredient}" 
            inst.ingredient
        end 
        end
    end 
end 