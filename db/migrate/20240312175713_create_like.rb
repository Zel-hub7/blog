class CreateLike < ActiveRecord::Migration[7.1]
  def change
    create_table :likes do |t|
      t.integer :user_id
      t.integer :post_id
      t.timestamps
    end
  end
end
