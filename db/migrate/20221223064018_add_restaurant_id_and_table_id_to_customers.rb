class AddRestaurantIdAndTableIdToCustomers < ActiveRecord::Migration[6.1]
  def change
    add_column :customers, :table_id, :integer
    add_column :customers, :restaurant_id, :integer
  end
end
