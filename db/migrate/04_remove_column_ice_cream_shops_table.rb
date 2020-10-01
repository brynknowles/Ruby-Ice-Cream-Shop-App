class RemoveColumnIceCreamShopsTable < ActiveRecord::Migration[6.0]
    def change
        remove_column :ice_cream_shops, :location
    end
end