class AddShopOwnerIdColumn < ActiveRecord::Migration[6.0]
    def change
        add_column :ice_cream_cones, :shop_owner_id, :integer
    end
end