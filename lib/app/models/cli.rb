require_relative '../config/environment'
require 'pry'

class CLI

    def welcome
        puts "Welcome to The Ice Cream Shop!"
        puts "What's your name?"
        name = gets.chomp
        Customer.create(name: name)
        puts "#{name:}, please pick an ice cream shop!"
        # 1. mikey
        # 2. ample
        # 3. creme
        # 4. blue
        ice_cream_shop = gets.chomp
        puts "Okay, #{name:}, time to build your ice cream cone!"
        
        puts "#{name:}, please choose your ice cream flavor"
        flavor = gets.chomp
        puts "#{name:}, please choose your type of cone"
        cone = gets.chomp
        puts "#{name:}, please choose your ice cream flavor"
    end

end





binding.pry