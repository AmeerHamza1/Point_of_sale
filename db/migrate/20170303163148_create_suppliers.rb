class CreateSuppliers < ActiveRecord::Migration[5.0]
  def change
    create_table :suppliers do |t|
      t.integer :sup_code
      t.string :sup_name
      t.string :sup_location

      t.timestamps
    end
  end
end
