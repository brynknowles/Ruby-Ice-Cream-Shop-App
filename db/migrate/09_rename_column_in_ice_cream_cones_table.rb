class RenameColumnInIceCreamConesTable < ActiveRecord::Migration[6.0]
    def change
        rename_column :ice_cream_cones, :shop_owner_id, :shop_id
    end
end