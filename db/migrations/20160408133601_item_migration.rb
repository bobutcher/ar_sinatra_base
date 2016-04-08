class ItemMigration < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.integer :list_id
    end
  end
end
