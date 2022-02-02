class CreateOrderDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :order_details do |t|
      t.decimal :total
      t.belongs_to :user_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
