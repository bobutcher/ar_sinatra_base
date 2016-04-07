class UserMigration < ActiveRecord::Migration
  def change
    t.string :name
  end
end
