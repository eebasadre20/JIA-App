class AddChurchOnAdmin < ActiveRecord::Migration[5.1]
  def change
    add_reference :admins, :church, foreign_key: true
  end
end
