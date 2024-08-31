class CreateLendingHistories < ActiveRecord::Migration[7.1]
  def change
    create_table :lending_histories do |t|
      t.references :student, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true
      t.date :date_lent, null: false
      t.date :date_to_return, null: false
      t.date :date_returned, null: false
      t.integer :status, null: false, default: 0

      t.timestamps
    end
  end
end
