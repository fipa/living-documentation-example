class CreatePromotions < ActiveRecord::Migration
  def change
    create_table :promotions do |t|
      t.string :name
      t.integer :discount
      t.boolean :is_active

      t.timestamps null: false
    end
  end
end
