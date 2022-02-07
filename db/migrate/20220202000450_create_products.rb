class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :desc
      t.integer :price
      t.integer :total_quantity
      t.string :image
      t.references :discount

      t.timestamps
    end
  end
end
