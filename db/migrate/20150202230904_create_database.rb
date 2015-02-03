class CreateDatabase < ActiveRecord::Migration
  def change
    create_table(:tamagotchi) do |t|
      t.string :name
      t.boolean :alive
    end
  end
end
