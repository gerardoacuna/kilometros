class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.integer :cause_id
      t.integer :user_id
      t.decimal :amount
      t.integer :race_id

      t.timestamps
    end
  end
end
