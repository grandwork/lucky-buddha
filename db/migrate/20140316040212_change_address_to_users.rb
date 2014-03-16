class ChangeAddressToUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :address
  	add_column :users, :address1, :string
  	add_column :users, :address2, :string
  end
end
