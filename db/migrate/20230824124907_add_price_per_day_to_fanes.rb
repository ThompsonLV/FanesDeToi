class AddPricePerDayToFanes < ActiveRecord::Migration[7.0]
  def change
    add_column :fanes, :price_per_day, :integer
  end
end
