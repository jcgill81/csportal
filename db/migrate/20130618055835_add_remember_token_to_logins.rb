class AddRememberTokenToLogins < ActiveRecord::Migration
  def change
    add_column :logins, :remember_token, :string
    add_index  :logins, :remember_token
  end
end
