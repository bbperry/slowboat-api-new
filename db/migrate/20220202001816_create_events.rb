class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :title
      t.string :time
      t.string :months
      t.string :map

      t.timestamps
    end
  end
end
