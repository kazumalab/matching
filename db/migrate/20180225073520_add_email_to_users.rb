class AddEmailToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :email, :string
    change_column_null :users, :provider, false
    change_column_null :users, :uid, false
    change_column_null :users, :nickname, false
  end
end
