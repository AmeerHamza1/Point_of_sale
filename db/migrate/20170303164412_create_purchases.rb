class CreatePurchases < ActiveRecord::Migration[5.0]
  def change
    create_table :purchases do |t|
      t.integer :doc_no
      t.date :doc_date
      t.integer :sup_code
      t.integer :sup_name
      t.references :supplier, foreign_key: true

      t.timestamps
    end
  end
end
