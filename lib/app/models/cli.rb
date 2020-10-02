require_all 'lib'
require 'pry'
require "tty-prompt"

class CLI

    @@prompt = TTY::Prompt.new

    def start
        ## login
        puts "Welcome to The Ice Cream Shop App!"
        puts "Please sign in."
        name = @@prompt.ask("What is your name?")
        customer = Customer.find_or_create_by(name: name)

        ## choose_shop
        puts "Hi #{customer.name}!"
        choice = @@prompt.select("Please choose ice cream shop") do |menu|
            menu.choice "Ample Hills Creamery", 1
            menu.choice "Creme And Cocoa", 2
        end

        if choice == 1
            # ice_cream_shop << IceCreamShop.find_or_create_by(name: "Ample Hills Creamery")
            puts "Welcome to Ample Hills Creamery!"
            # @@prompt.keypress("Press any key to return")
            self.menu1
        elsif choice == 2
            # ice_cream_shop = IceCreamShop.find_or_create_by(name: name)
            puts "Welcome to Creme And Cocoa!"
            self.menu2
        end
    end

    ## ample_menu
    def menu1
        puts "Let's build your ice cream cone."
        ice_cream_cone = []
        choice1 = @@prompt.select("Please choose your flavor") do |menu|
            menu.choice "Strawberries & Cream"
            menu.choice "Chocolate"
            menu.choice "Vanilla"
            menu.choice "Mango Sorbet"
        end

        choice2 = @@prompt.select("Please choose your cone") do |menu|
            menu.choice "cake"
            menu.choice "sugar"
            menu.choice "waffle"
        end

        choice3 = @@prompt.select("Please choose the number of scoops") do |menu|
            menu.choice 1
            menu.choice 2
            menu.choice 3
        end
        # ice_cream_cone = IceCreamCone.find_or_create_by(flavor: flavor, cone: cone, scoops: scoops, customer: self, ice_cream_shop: ice_cream_shop)
        puts "You ordered the following: #{choice3} scoop(s) of #{choice1} flavored ice cream on a #{choice2} cone."
        self.satisfied?
    end

    ## creme_menu
    def menu2
        puts "Let's build your ice cream cone."

        choice1 = @@prompt.select("Please choose your flavor") do |menu|
            menu.choice "Cookies N Creme"
            menu.choice "Chocolate"
            menu.choice "Vanilla"
            menu.choice "Banana Sorbet"
        end

        choice2 = @@prompt.select("Please choose your cone") do |menu|
            menu.choice "cake"
            menu.choice "sugar"
            menu.choice "waffle"
        end

        choice3 = @@prompt.select("Please choose the number of scoops") do |menu|
            menu.choice 1
            menu.choice 2
            menu.choice 3
        end
        # ice_cream_cone = IceCreamCone.find_or_create_by(flavor: flavor, cone: cone, scoops: scoops, customer: self, ice_cream_shop: ice_cream_shop)
        # puts "#{customer.name}, your order is #{ice_cream_cone}"
        puts "You ordered the following: #{choice3} scoop(s) of #{choice1} flavored ice cream on a #{choice2} cone."
        self.satisfied?
    end

    def satisfied?
        input = @@prompt.yes?("Are you satisfied with your order?")
        # puts "Are you satisfied with your order? y/n"
        # input = gets.chomp
        if input == true
            puts "Thank you for your order. Have a great day!"
        else
            # ice_cream_cone.last.destroy
            puts "We're sorry. Please start a new order."
            self.menu1 # should direct the customer back to building the cone
        end
    end

    def nice_greeting(customer)
        puts "Here's your ice cream cone" #show the ice cream cone that was built by customer?
        puts "Thank you for your order, #{customer.name}. Have a great day!"
    end

    ## SHELVE THIS METHOD -- too complex for now
    # def ice_cream_mishap
    # end

end