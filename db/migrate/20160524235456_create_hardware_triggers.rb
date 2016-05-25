class CreateHardwareTriggers < ActiveRecord::Migration
  def change
    create_table :hardware_triggers do |t|
      t.integer :pet_weight
      t.integer :food_weight
      t.integer :water_volume

      t.timestamps null: false
    end
  end
end
