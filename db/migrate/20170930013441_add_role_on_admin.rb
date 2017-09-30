class AddRoleOnAdmin < ActiveRecord::Migration[5.1]
  def change
    add_column :admins, :role, :string, default: ''
  end
end
