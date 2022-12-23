class AddCustomerIdAndRestaurantIdToTables < ActiveRecord::Migration[6.1]
  def change
    add_column :tables, :customer_id, :integer
    add_column :tables, :restaurant_id, :integer
  end
end
