class CreatePetinfos < ActiveRecord::Migration
  def change
    create_table :petinfos do |t|
      t.integer :pet_weight
      t.integer :food_weight
      t.integer :water_volume

      t.timestamps null: false
    end
  end
end
