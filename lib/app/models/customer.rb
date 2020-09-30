class Customer < ActiveRecord::Base
    has_many :ice_cream_cones
    has_many :ice_cream_shops, through: :ice_cream_cones

    # def purchase_ice_cream_cone(flavor, cone, scoops, shop) # changed the argument names to simplify things
    #     # IceCreamCone.create(ice_cream_flavor: flavor, cone_type: cone, number_of_scoops: scoops, customer: self, ice_cream_shop: shop)
    # end
end