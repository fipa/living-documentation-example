class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.float :price
      t.integer :stock
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
