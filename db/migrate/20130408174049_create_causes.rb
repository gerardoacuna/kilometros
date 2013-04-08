class CreateCauses < ActiveRecord::Migration
  def change
    create_table :causes do |t|
      t.string :name
      t.text :description
      t.datetime :end_date

      t.timestamps
    end
  end
end
