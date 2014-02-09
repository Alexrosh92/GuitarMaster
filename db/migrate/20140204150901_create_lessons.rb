class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :name
      t.text :body
      t.string :video_url
      t.string :category

      t.timestamps
    end
  end
end
