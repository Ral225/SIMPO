class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :product_name
      t.float :stock_level
      t.string :unit

      t.timestamps
    end
  end
end
