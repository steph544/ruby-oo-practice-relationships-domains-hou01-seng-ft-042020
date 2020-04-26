require_relative '../config/environment.rb'
require_relative '../app/models/Passenger.rb'
require_relative '../app/models/Ride.rb'
require_relative '../app/models/Driver.rb'

def reload
  load 'config/environment.rb'
end

p1= Passenger.new(name: "stephanie")
p2= Passenger.new(name: "mark")
p3= Passenger.new(name: "elijah")
p4= Passenger.new(name: "owen")

d1= Driver.new(distance: 50.0, name: "Jesse")
d2= Driver.new(distance: 100.5, name: "liz")
d3= Driver.new(distance: 200.5, name: "Kristen")
d4= Driver.new(distance: 480.2, name: "Josh")
d5= Driver.new(distance: 53.1, name: "Amber")

r1= Ride.new(distance:100.1, passenger:p1, driver:d1)
r2= Ride.new(distance:101.0, passenger:p2, driver:d2)
r3= Ride.new(distance:152.5, passenger:p3, driver:d3)
r4= Ride.new(distance:4.4, passenger:p4, driver:d4)
r5= Ride.new(distance:120.5, passenger:p1, driver:d5)
r6= Ride.new(distance:250.5, passenger:p2, driver:d1)


Pry.start


binding.pry 
0