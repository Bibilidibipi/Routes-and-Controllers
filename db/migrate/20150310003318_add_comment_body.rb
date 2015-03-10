class AddCommentBody < ActiveRecord::Migration
  def change
    add_column :comments, :body, :text, null: false
    add_column :comments, :user_id, :integer, null: false

    add_index :comments, :user_id
  end
end
