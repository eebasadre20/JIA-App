class AddCellLeaderToProfiles < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :cell_leader, :string
  end
end
