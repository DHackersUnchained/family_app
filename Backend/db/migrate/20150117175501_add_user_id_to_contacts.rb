class AddUserIdToContacts < ActiveRecord::Migration
  def change
    remove_column :contacts, :user_id
    add_column :contacts, :user_id, :integer
    add_index :contacts, :user_id
  end
end
