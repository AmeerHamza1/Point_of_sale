class CreateSaledetails < ActiveRecord::Migration[5.0]
  def change
    create_table :saledetails do |t|
      t.integer :inv_no
      t.date :inv_date
      t.string :cust_name
      t.string :prod_name
      t.integer :sale_qty
      t.integer :tp_rate
      t.integer :gross_sale
      t.integer :tax
      t.integer :net_sale
      t.integer :discount
      t.integer :payable_amount
      t.references :sale, foreign_key: true

      t.timestamps
    end
  end
end
