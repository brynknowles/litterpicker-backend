class CreateCleanups < ActiveRecord::Migration[6.0]
  def change
    create_table :cleanups do |t|
      t.string :name
      t.string :location
      t.string :category
      t.string :image
      t.date :date
      t.integer :duration
      t.text :comment
      t.integer :cheer
      t.timestamps
    end
  end
end
