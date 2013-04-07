class CreateRaceDetails < ActiveRecord::Migration
  def change
    create_table :race_details do |t|
      t.datetime :date
      t.string :distance
      t.integer :race_id

      t.timestamps
    end
  end
end
