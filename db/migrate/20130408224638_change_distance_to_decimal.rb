class ChangeDistanceToDecimal < ActiveRecord::Migration
  def up
  	change_column :race_details, :distance, :decimal
  end

  def down
  	change_column :race_details, :distance, :string
  end
end
