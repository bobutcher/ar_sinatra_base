  class TaskMigration < ActiveRecord::Migration
    def change
      create_table :tasks do |t|
      t.text :to_do
      t.boolean :completed?
      end
    end
  end
