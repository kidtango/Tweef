class CreateTankProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :tank_profiles do |t|
      t.string :profile_name
			t.string :display
			t.string :stand	
			t.string :sump
			t.string :lighting
			t.string :filtration
			t.string :return_pump
			t.string :water_cirrculation
			t.string :calcium_reactor
			t.string :auto_top_off
			t.string :heating_and_cooling
			t.string :other_equipment
					
			t.belongs_to :user
      t.timestamps
    end
  end
end
