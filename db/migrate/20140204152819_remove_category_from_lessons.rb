class RemoveCategoryFromLessons < ActiveRecord::Migration
  change_table :lessons do |t|
    t.remove :category

  end
end
