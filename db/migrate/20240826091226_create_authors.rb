class CreateAuthors < ActiveRecord::Migration[7.1]
  def change
    create_table :authors do |t|
      t.string :name, null: false
      t.text :bio, null: true
      t.integer :no_of_books, null:false, default: 1
      t.string :contact, null:false

      t.timestamps
    end
  end
end
