class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :avatar
      t.string :user_name
      t.string :password
      t.string :catchphrase
      t.boolean :badge1
      t.boolean :badge2
      t.boolean :badge3
      t.boolean :badge4
      t.boolean :badge5

      t.timestamps
    end
  end
end
