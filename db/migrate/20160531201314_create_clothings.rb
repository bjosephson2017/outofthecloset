class CreateClothings < ActiveRecord::Migration
  def change
    create_table :clothings do |t|
      t.integer :theme_id
      t.integer :weather_forecast_id
      t.integer :appropriate_for_temperature
      t.text :appropriate_for_forecast
      t.integer :size
      t.string :color
      t.string :brand
      t.string :type

      t.timestamps

    end
  end
end
