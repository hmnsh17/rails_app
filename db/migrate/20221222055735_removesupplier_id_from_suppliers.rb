class RemovesupplierIdFromSuppliers < ActiveRecord::Migration[6.1]
  def change
    remove_column :suppliers, :supplier_id
  end
end
