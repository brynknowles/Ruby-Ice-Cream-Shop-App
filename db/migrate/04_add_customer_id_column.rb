class AddCustomerIdColumn < ActiveRecord::Migration[6.0]
  def change
    add_column :ice_cream_cones, :customer_id, :integer
  end
end
