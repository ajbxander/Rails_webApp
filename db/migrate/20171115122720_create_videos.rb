class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title, null: false
      t.text :about, null: false

      t.timestamps null: false
    end
  end
end
