class CreateProductEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :product_entries do |t|
      t.date :date
      t.references :product, null: false, foreign_key: true
      t.float :quantity
      t.float :unit_price
      t.float :total_cost
      t.string :PO_number
      t.string :BL_number
      t.references :warehouse, null: false, foreign_key: true
      t.timestamps
    end
  end
end
