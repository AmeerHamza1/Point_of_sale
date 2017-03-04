class CreatePurchasedetails < ActiveRecord::Migration[5.0]
  def change
    create_table :purchasedetails do |t|
      t.integer :doc_no
      t.string :sup_name
      t.string :prod_name
      t.integer :prod_qty
      t.references :purchase, foreign_key: true

      t.timestamps
    end
  end
end
