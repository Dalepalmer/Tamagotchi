class CreateTableTamagotchi < ActiveRecord::Migration
  def change
    create_table(:tamagotchis) do |t|
      t.string :name
      t.integer :food
      t.integer :sleep
      t.integer :activity
      t.integer :health
      t.integer :attack
      t.integer :defense
      t.boolean :alive
    end
  end
end
