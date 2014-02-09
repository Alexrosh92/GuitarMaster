class CreateAccords < ActiveRecord::Migration
  def change
    create_table :accords do |t|
      t.string :name
      t.string :picture_url
      t.string :video_url

      t.timestamps
    end
  end
end
