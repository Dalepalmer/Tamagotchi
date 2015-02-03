class CreateTableStatusesTamagotchis < ActiveRecord::Migration
  def change
    create_table(:statuses_tamagotchis) do |t|
      t.integer :status_ids
      t.integer :tamagotchi_id
    end
  end
end
