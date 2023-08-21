class CreateFanes < ActiveRecord::Migration[7.0]
  def change
    create_table :fanes do |t|
      t.string :title
      t.string :brand
      t.date :start_date
      t.date :end_date
      t.boolean :validation
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
