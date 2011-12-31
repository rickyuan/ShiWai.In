class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :content
      t.string :photo
      t.integer :event_id

      t.timestamps
    end
  end
end
