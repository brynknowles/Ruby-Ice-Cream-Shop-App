class CreateIceCreamConesTable < ActiveRecord::Migration[6.0]
    def change
        create_table :ice_cream_cones do |t|
            t.string :ice_cream_flavor
            t.string :cone_type
            t.integer :number_of_scoops
        end
    end
end