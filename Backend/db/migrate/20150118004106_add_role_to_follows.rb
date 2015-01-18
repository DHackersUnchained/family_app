class AddRoleToFollows < ActiveRecord::Migration
  def change
    add_column :follows, :role, :string
  end
end
