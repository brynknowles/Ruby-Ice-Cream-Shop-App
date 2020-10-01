class Customer < ActiveRecord::Base
    has_many :ice_cream_cones
    has_many :ice_cream_shops, through: :ice_cream_cones

    def self.login
        puts "What is your name?"
        name = gets.chomp
        customer = Customer.find_by(name: name)
    end

    def choose_ice_cream_shop

    end

    def order_ice_cream_cone(flavor, cone, scoops, ice_cream_shop) #customer orders a new ice cream cone
        IceCreamCone.create(flavor, cone, scoops, self, ice_cream_shop)
    end

    # def ice_cream_cones #list of ice cream cones ordered by customer

    # def favorite_ice_cream_shop  #customer's most frequently visited shop
    # end

    # def favorite_ice_cream_cone #customer's most purchased ice cream cone
    # end

    # def self.find_by_location(location) #finds ice cream shop by location
    # end

    # def choose_flavor
    # end

    # def choose_cone
    # end

    # def choose_num_of_scoops
    # end
end