class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :author
      t.string :heading
      t.text :perex
      t.text :body

      t.timestamps
    end
  end
end
