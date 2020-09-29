class RenameOldTableToNewTable < ActiveRecord::Migration[6.0]
    def change
        rename_table :shop_owners, :ice_cream_shops
    end
end