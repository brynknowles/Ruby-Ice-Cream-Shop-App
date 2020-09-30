class CreateIceCreamShopsTable < ActiveRecord::Migration[6.0]
    def change
        create_table :ice_cream_shops do |t|
            t.string :name
            t.string :location
        end
    end
end