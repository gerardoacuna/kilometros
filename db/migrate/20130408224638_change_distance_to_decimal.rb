class ChangeDistanceToDecimal < ActiveRecord::Migration
  def up
  	rename_column :race_details, :distance, :algo
	  add_column :race_details, :distance, :decimal
  	remove_columns :race_details, :algo
  end

  def down
  	change_column :race_details, :distance, :string
  end
end
