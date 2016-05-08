class CreateEntriesTags < ActiveRecord::Migration
  def change
    create_table :entries_tags do |t|
      t.references :entry, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps(null: false)
    end
  end
end
