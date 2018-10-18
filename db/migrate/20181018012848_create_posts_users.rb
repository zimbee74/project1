class CreatePostsUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :posts_users do |t|
      t.integer :post_id
      t.integer :user_id
    end
  end
end
