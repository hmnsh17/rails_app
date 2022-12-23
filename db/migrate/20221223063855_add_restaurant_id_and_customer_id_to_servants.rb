class AddRestaurantIdAndCustomerIdToServants < ActiveRecord::Migration[6.1]
  def change
    add_column :servants, :customer_id, :integer
    add_column :servants, :restaurant_id, :integer
  end
end
