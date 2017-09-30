class AddNewColumnsOnProfile < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :payment, :decimal, default: 0.0
    add_column :profiles, :status, :string, default: 'unpaid'
  end
end
