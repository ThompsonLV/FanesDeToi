class AddAddressToFanes < ActiveRecord::Migration[7.0]
  def change
    add_column :fanes, :address, :string
  end
end
