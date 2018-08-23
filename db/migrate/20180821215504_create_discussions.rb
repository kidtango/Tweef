class CreateDiscussions < ActiveRecord::Migration[5.2]
  def change
    create_table :discussions do |t|
      t.string :topic
      t.text :content
      t.integer :user_id

      t.timestamps
    end
  end
end
