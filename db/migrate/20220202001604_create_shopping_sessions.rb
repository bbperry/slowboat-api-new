class CreateShoppingSessions < ActiveRecord::Migration[7.0]
  def change
    create_table :shopping_sessions do |t|
      t.decimal :total
      t.references :user
      t.timestamps
    end
  end
end
