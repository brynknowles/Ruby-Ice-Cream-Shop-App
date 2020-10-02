class Customer < ActiveRecord::Base
    has_many :ice_cream_cones
    has_many :ice_cream_shops, through: :ice_cream_cones

    # def self.login
    #     ## asks customer to sign in 
    #     ## captures the customer's name
    #     ## creates a new customer instance

    # end

    def create_ice_cream_cone(flavor, cone, scoops, ice_cream_shop)
        IceCreamCone.create(flavor: flavor, cone: cone, scoops: scoops, customer: self, ice_cream_shop: ice_cream_shop)
    end

    def ice_cream_cones
        IceCreamCone.all.select { |ice_cream_cone| ice_cream_cone.customer == self}  #list of ice cream cones ordered by customer
    end

    def ice_cream_shops ## needs an ice_cream_cones method first
        self.ice_cream_cones.map { |ice_cream_cone| ice_cream_cone.ice_cream_shop}.uniq
    end

    # def favorite_ice_cream_shop  #customer's most frequently visited shop
    # end

    # def favorite_ice_cream_cone #customer's most purchased ice cream cone
    # end

end