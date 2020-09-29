require_relative '../config/environment'
require 'pry'



puts "HELLO WORLD"




## -------------------------------------
## Tests passing so far
# Customer.all
# IceCreamCone.all
# ShopOwner.all

# z = Customer.first
# z.name

# wa = ShopOwner.first
# wa.name

# c1 = IceCreamCone.first
# c1.ice_cream_flavor
# c1.number_of_scoops
# c1.customer
# c1.customer.name
# c1.shop_owner
# c1.shop_owner.name
# c1.shop_owner.shop_name

# m = Customer.second
# m.name
# m.ice_cream_cones
# m.ice_cream_cones.name
# m.shop_owners

## -------------------------------------
## Tests not passing (need methods)
# c1.shop_name
# c1.customer.ice_cream_flavor
# m.shop_owners.shop_names
# m.shop_owners.shop_name



binding.pry