class CreateChurches < ActiveRecord::Migration[5.1]
  def change
    create_table :churches do |t|
      t.string :name
      t.text :description
      t.text :address

      t.timestamps
    end

    add_index :churches, :name, unique: true
    add_reference :profiles, :church, foreign_key: true
  end
end
