class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.integer :forum_id
      t.integer :user_id
      t.string :title
      t.text :content
      t.datetime :created_at
      t.datetime :edited_at
      t.timestamps
    end
  end
end
