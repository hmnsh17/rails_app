class UpdateBooksData < ActiveRecord::Migration[6.1]
  def change
    change_column(:books, :description, :text )
  end
end
