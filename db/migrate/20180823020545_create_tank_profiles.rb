class CreateTankProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :tank_profiles do |t|
      t.string :profile_name
      t.integer :user_id

      t.timestamps
    end
  end
end
