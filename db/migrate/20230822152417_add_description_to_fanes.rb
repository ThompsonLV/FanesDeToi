class AddDescriptionToFanes < ActiveRecord::Migration[7.0]
  def change
    add_column :fanes, :description, :string
  end
end
