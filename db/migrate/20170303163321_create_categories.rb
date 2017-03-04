class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.integer :cat_code
      t.string :cat_title
      t.text :cat_detail

      t.timestamps
    end
  end
end
