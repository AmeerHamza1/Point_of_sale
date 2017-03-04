class CreateSales < ActiveRecord::Migration[5.0]
  def change
    create_table :sales do |t|
      t.integer :inv_no
      t.date :inv_date
      t.integer :cust_code
      t.string :cust_name
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
