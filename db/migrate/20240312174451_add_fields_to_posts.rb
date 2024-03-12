class AddFieldsToPosts < ActiveRecord::Migration[7.1]
  def change
    add_column :posts, :title, :string
    add_column :posts, :comments_counter, :integer
    add_column :posts, :likes_counter, :integer
    rename_column :posts, :user_id, :author_id
  end
end
