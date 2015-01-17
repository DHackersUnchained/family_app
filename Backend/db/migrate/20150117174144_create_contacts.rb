class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :facebook
      t.string :twitter
      t.string :linkedin
      t.string :phone
      t.text :address
      t.string :email
      t.string :birthday
      t.string :hometown
      t.integer :user_id

      t.timestamps
    end
  end
end
