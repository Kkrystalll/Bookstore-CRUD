class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.date :date
      t.integer :price
      t.integer :page
      t.string :ISBN

      t.timestamps
    end
  add_index :books, :title, unique: true
  add_index :books, :date
  add_index :books, :ISBN, unique: true
  end
end
