class CreateWeatherForecasts < ActiveRecord::Migration
  def change
    create_table :weather_forecasts do |t|
      t.integer :temperature_f
      t.string :forecast
      t.string :state
      t.string :city

      t.timestamps

    end
  end
end
