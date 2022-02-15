class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :total_price
      t.integer :total_quantity
      t.timestamps
    end
  end
end
