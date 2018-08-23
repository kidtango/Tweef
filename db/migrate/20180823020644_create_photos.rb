class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string :img_url
      t.string :name
      t.integer :tank_profile_id

      t.timestamps
    end
  end
end
