class CreateAuthors < ActiveRecord::Migration[6.1]
  def change
    create_table :authors do |t|
      t.string :name
      t.integer :age
      t.datetime :dob
      t.boolean :gender
      t.date :jdate

      t.timestamps
    end
  end
end
