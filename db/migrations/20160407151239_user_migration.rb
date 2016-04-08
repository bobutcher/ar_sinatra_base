  class UserMigration < ActiveRecord::Migration
    def change
      create_table :users do |t|
        t.string :email
        t.timestamp null: true
      end
    end
  end
