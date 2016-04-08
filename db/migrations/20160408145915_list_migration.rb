class ListMigration < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.text :name
      t.datetime :completed_at
      t.integer :user_id
    end
  end
end
