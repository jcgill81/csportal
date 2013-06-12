class AddIndexToLoginEmail < ActiveRecord::Migration
  def change
  	    add_index :logins, :email, unique: true
  end
end
