class CreateProductExits < ActiveRecord::Migration[7.0]
  def change
    create_table :product_exits do |t|
      t.date :date
      t.references :product, null: false, foreign_key: true
      t.float :quantity
      t.references :fleet, null: false, foreign_key: true
      t.references :warehouse, null: false, foreign_key: true

      t.timestamps
    end
  end
end
