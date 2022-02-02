class CreateCartItems < ActiveRecord::Migration[7.0]
  def change
    create_table :cart_items do |t|
      t.integer :session_id
      t.integer :quantity
      t.belongs_to :product_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
