class CreateShopOwnersTable < ActiveRecord::Migration[6.0]
    def change
        create_table :shop_owners do |t|
            t.string :name
            t.string :shop_name
        end
    end
end
