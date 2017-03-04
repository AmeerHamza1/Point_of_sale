class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.integer :prod_code
      t.string :prod_name
      t.string :category
      t.integer :tp_rate
      t.references :category, foreign_key: true
      t.references :saledetail, foreign_key: true
      t.references :purchasedetail, foreign_key: true

      t.timestamps
    end
  end
end
