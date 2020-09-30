class CreateIceCreamConesTable < ActiveRecord::Migration[6.0]
    def change
        create_table :ice_cream_cones do |t|
            t.string :flavor
            t.string :cone
            t.integer :scoops
            t.integer :customer_id
            t.integer :shop_id
        end
    end
end