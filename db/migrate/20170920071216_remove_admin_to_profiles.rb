class RemoveAdminToProfiles < ActiveRecord::Migration[5.1]
  def change
    remove_reference :profiles, :admin, foreign_key: true
  end
end
