class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :desc
      t.string :location
      t.string :date
      t.references :user

      t.timestamps
    end
  end
end
