class Customer < ActiveRecord::Base
    has_many :ice_cream_cones
    has_many :ice_cream_shops, through: :ice_cream_cones

    @@prompt = TTY::Prompt.new

    def self.login
        puts "Please sign in."
        name = @@prompt.ask("What is your name?")
        Customer.find_or_create_by(name: name)
        # puts "What's your name?"
        # name = gets.chomp
        # customer = Customer.find_or_create_by(name: name)
    end

    def choose_ice_cream_shop
        option = @@prompt.select("option?", %w(1 2))
        if option == 1
            IceCreamShop.find_or_create_by(name: name)
            puts "Welcome to Ample Hills Cremery!"
        elsif option == 2
            IceCreamShop.find_or_create_by(name: name)
            puts "Welcome to Creme And Cocoa!"
        end
        # choice = gets.chomp 
        ## allows a customer to choose an ice cream shop, 
        ## and then stores that data for when they create an ice cream cone
    end

    def order_ice_cream_cone(flavor, cone, scoops, ice_cream_shop) ## creates a new ice cream cone instance when a customer puts in an order
        IceCreamCone.create(flavor, cone, scoops, self, ice_cream_shop)
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