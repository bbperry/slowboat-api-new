class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events do |t|
      t.string :desc
      t.string :location
      t.string :date
      t.belongs_to :user_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
