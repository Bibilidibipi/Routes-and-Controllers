class ChangeUsers < ActiveRecord::Migration
  def up
    remove_column :users, :name
    remove_column :users, :email

    add_column :users, :username, :string, null: false, unique: true
  end

  def down
    add_column :users, :name, :string, null: false
    add_column :users, :email, :string, null: false

    remove_column :users, :username
  end
end
