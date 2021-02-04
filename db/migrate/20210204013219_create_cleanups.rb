class CreateCleanups < ActiveRecord::Migration[6.0]
  def change
    create_table :cleanups do |t|
      t.string :name
      t.string :location
      t.string :category
      t.date :date
      t.time :start_time
      t.time :end_time
      t.text :comment
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
