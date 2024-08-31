class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :code, null: false
      t.string :name, null: false
      t.text :description, null: true
      t.string :edition, null: false
      t.date :published_date, null: false
      t.integer :status, null:false, default: 2

      t.timestamps
    end
  end
end
