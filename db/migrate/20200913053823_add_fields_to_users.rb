class AddFieldsToUsers < ActiveRecord::Migration[6.0]
  def change
  	add_column :users, :admin, :boolean, default: false
  	add_column :users, :password_digest, :string
    add_column :users, :username, :string
  end
end
