class CreateUserEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :user_events do |t|
      t.references :profile, foreign_key: true
      t.references :event, foreign_key: true
      t.string :status
      t.decimal :payment

      t.timestamps
    end
  end
end
