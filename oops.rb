class Vehicle
    @@no_of_wheels=4
    attr_accessor :name,:type
    def initialize(horsepower,capacity_of_tank,color)
        @horsepower=horsepower
        @capacity_of_tank=capacity_of_tank
        @color=color
    end
    
    def fuel(fuel)
        @fuel=fuel
        p"This car runs on #{@fuel}."
    end
    private
    def max_speed
        @speed=100
        p"maximum speed of the vehicle is #{@speed}."
    end
    public
    def print
        p "The vehicle is of color #{@color} and with #{@horsepower} horsepower"
        @color="Yellow"
        p @color
        p @name
        p @type
        self.max_speed
    end
end

v1=Vehicle.new(10,2,"red")
v1.name="bmw"
v1.type="sedan"
# v1.max_speed(20)
v1.fuel("electricity")

# p v1.no_of_wheels
v1.print