class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string :tag
      t.string :name
      t.integer :tank_profile_id
      t.string :image_id

      t.timestamps
    end
  end
end
