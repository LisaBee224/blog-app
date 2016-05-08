class CreateUsersTags < ActiveRecord::Migration
  def change
    create_table :users_tags do |t|
      t.references :user, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps(null:false)
    end
  end
end
