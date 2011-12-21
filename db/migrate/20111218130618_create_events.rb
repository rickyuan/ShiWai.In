class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :city
      t.date :edate
      t.text :story

      t.timestamps
    end
  end
end
