# require_relative '../config/environment'
require 'pry'
require "tty-prompt"

class CLI
    @@prompt = TTY::Prompt.new
    def start
        # prompt = TTY::Prompt.new

        puts "Welcome to The Ice Cream Shop App!"
        customer = Customer.login
        puts "Hi #{customer.name}! please choose an ice cream shop."
        # customer.choose_ice_cream_shop
        puts "1. Ample Hills Cremery"
        puts "2. Creme And Cocoa"
        choice = gets.chomp

        if choice == "1"
            puts "Okay #{customer.name}, it's time to build your ice cream cone!"
            puts "Let's take a look at a menu."
            self.menu_ample(customer)
        end

        if choice == "2"
            puts "Okay #{customer.name}, it's time to build your ice cream cone!"
            puts "Let's take a look at a menu."
            self.menu_creme(customer)
        end
        binding.pry
    end

    def menu_ample(customer, ice_cream_shop)

        puts "#{customer.name}, please choose your ice cream flavor"
        puts "1. Strawberries & Cream"
        puts "2. Chocolate"
        puts "3. Vanilla"
        puts "4. Mango Sorbet"
        flavor = gets.chomp
        
        puts "#{customer.name}, please choose your cone type"
        puts "1. Cake Cone"
        puts "2. Sugar Cone"
        puts "3. Waffel Cone"
        cone = gets.chomp


        puts "#{customer.name}, how many scoops would you like?"
        puts "1"
        puts "2"
        puts "3"
        scoops = gets.chomp

        # customer 
        # binding.pry
    end

    def satisfied?
    prompt.yes?("Are you satisfied with your order?")
        # puts "Are you satisfied with your order? (y/n)"
        choice = gets.chomp
        if choice == "yes" 
            customer.nice_greeting
        else
            # ice_cream_cone.last.destroy
            # delete order (is this needed if it hasn't been created yet? probably not)
            puts "Please start a new order."
            menu_ample(customer) # should direct the customer back to building the cone
        end
    end

    ### Work on this after figuring out ample hills ###

    # def menu_creme(customer)  

    #     puts "#{customer.name}, please choose your ice cream flavor"
    #     puts "1. Island Gal"
    #     puts "2. Chocolate"
    #     puts "3. Vanilla"
    #     puts "4. Banana Sorbet"
    #     flavor = gets.chomp
        
    #     puts "#{customer.name}, please choose your cone type"
    #     puts "1. Cake Cone"
    #     puts "2. Sugar Cone"
    #     puts "3. Waffel Cone"
    #     cone = gets.chomp


    #     puts "#{customer.name}, how many scoops would you like?"
    #     puts "1"
    #     puts "2"
    #     puts "3"
    #     scoops = gets.chomp

    #     puts "Are you satisfied with your order? y/n"
    #     choice = gets.chomp
    #     if choice == y 
    #         customer.order_ice_cream_cone(flavor, cone, scoops)
    #         customer.nice_greeting
    #     else
    #         # delete order (is this needed if it hasn't been created yet? probably not)
    #         puts "Please start a new order."
    #         menu_creme(customer) # should direct the customer back to building the cone
    #     end
    # end

    def nice_greeting
        puts "Here's your ice cream cone" #show the ice cream cone that was built by customer
        puts "Thank you for your order, #{customer.name}. Have a great day!"
    end

    # def ice_cream_mishap
    # end

end





# binding.pry