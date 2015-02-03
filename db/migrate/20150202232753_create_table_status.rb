class CreateTableStatus < ActiveRecord::Migration
  def change
    create_table(:statuses) do |t|
      t.integer :food
      t.integer :sleep
      t.integer :activity
    end
  end
end
