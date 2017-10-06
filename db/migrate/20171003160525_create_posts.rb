class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.integer :forum_id
      t.integer :user_id
      t.text :content
      t.integer :likes
      t.datetime :created_at
      t.datetime :edited_at
      t.timestamps
    end
  end
end
