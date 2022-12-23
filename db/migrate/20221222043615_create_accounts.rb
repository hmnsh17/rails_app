class CreateAccounts < ActiveRecord::Migration[6.1]
  def change
    create_table :accounts do |t|
      t.integer :account_id
      t.integer :supplier_id
      t.string :account_number

      t.timestamps
    end
  end
end
