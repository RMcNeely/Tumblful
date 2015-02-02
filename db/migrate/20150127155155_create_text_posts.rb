class CreateTextPosts < ActiveRecord::Migration
  def change
    create_table :text_posts do |t|
      t.string :title
      t.string :url
      t.text :body

      t.timestamps
    end
  end
end
