class AddCoordinatesToFanes < ActiveRecord::Migration[7.0]
  def change
    add_column :fanes, :latitude, :float
    add_column :fanes, :longitude, :float
  end
end
