class CreatePromotions < ActiveRecord::Migration
  def change
    create_table :promotions do |t|
      t.string :name
      t.integer :discount
      t.boolean :status

      t.timestamps null: false
    end
  end
end
