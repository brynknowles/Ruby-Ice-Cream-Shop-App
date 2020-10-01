class IceCreamShop < ActiveRecord::Base
    has_many :ice_cream_cones
    has_many :customers, through: :ice_cream_cones

    def ice_cream_cones  ##returns an array of all of the ice cream cones this shop has sold
        IceCreamCone.all.select { |ice_cream_cone| ice_cream_cone.ice_cream_shop == self}
    end

    def customers  ##returns an array of all of the unique customers this shop has sold ice cream cones to
        self.ice_cream_cones.map { |ice_cream_cone| ice_cream_cone.customer}.uniq
    end

    ### SHELVE THIS METHOD
    # def self.find_by_location(location)  ## finds an ice cream shop by location -- returns the first one that matches the location called
    #     self.all.find { |ice_cream_shop| ice_cream_shop.location == location}
    # end

end