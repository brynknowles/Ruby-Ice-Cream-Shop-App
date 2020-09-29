class RenameColumnsInIceCreamConesTable < ActiveRecord::Migration[6.0]
    def change
        rename_column :ice_cream_cones, :ice_cream_flavor, :flavor
        rename_column :ice_cream_cones, :cone_type, :cone
        rename_column :ice_cream_cones, :number_of_scoops, :scoops
    end
end