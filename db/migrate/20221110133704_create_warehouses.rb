class CreateWarehouses < ActiveRecord::Migration[7.0]
  def change
    create_table :warehouses do |t|
      t.string :warehouse_name
      t.string :warehouse_description
      t.string :string

      t.timestamps
    end
  end
end
