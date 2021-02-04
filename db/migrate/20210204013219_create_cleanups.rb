class CreateCleanups < ActiveRecord::Migration[6.0]
  def change
    create_table :cleanups do |t|
      t.string :name
      t.string :category
      t.string :image
      t.date :date
      t.integer :duration
      t.text :comment
      t.integer :cheer
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
