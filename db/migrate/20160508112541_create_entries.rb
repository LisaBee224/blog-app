class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.integer :user_id, null: false
      t.string :body, null: false
      t.string :title, null: false

      t.timestamps(null: false)
    end
  end
end
