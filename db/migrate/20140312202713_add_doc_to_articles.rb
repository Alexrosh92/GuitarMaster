class AddDocToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :doc_uid,  :string
  end
end
