class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.integer :forum_id
      t.integer :user_id
      t.text :content
      t.integer :likes
      t.timestamps
    end
  end
end

#do likes get saved in database or in state?
#include created_at and edited_at columns
