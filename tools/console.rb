require_relative '../config/environment.rb'
require_relative '../app/models/Guest.rb'
require_relative '../app/models/Listing.rb'
require_relative '../app/models/Trip.rb'

def reload
  load 'config/environment.rb'
end

g1=Guest.new("Stephanie")
g2=Guest.new("Mark")
g3=Guest.new("Elijah")
g4=Guest.new("Owen")

l1=Listing.new("Houston")
l2=Listing.new("sanantonio")
l3=Listing.new("austin")
l4=Listing.new("austin")

t1=Trip.new(g1, l1)
t2=Trip.new(g2, l2)
t3=Trip.new(g3, l3)
t4=Trip.new(g1,l2)
t5=Trip.new(g2,l2)
t6=Trip.new(g2, l1)

Pry.start


binding.pry 
0