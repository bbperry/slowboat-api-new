class CreateCartItems < ActiveRecord::Migration[7.0]
  def change
    create_table :cart_items do |t|
      t.integer :quantity
      t.integer :price
      t.references :product

      t.timestamps
    end
  end
end
