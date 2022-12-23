class CreateServants < ActiveRecord::Migration[6.1]
  def change
    create_table :servants do |t|
      t.string :name
      t.integer :phone

      t.timestamps
    end
  end
end
