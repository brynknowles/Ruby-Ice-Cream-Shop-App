class Customer < ActiveRecord::Base
    has_many :ice_cream_cones
    has_many :ice_cream_shops, through: :ice_cream_cones

    # def order_ice_cream_cone(flavor, cone, scoops, shop) #customer orders a new ice cream cone
    #     IceCreamCone.create(flavor, cone, scoops, self, shop)
    # end

    # def ice_cream_cones #list of ice cream cones ordered by customer

    # def favorite_ice_cream_shop  #customer's most frequently visited shop
    # end

    # def favorite_ice_cream_cone #customer's most purchased ice cream cone
    # end

    # def self.find_by_location(location) #finds ice cream shop by location
    # end

end