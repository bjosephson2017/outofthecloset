class Clothing < ActiveRecord::Base

  validates :color, :presence => true
  validates :brand, :presence => true
  validates :type, :presence => true
  validates :size, :presence => true, :numericality => { :only_integer => true, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 50 }
  validates :theme_id, :presence => true
  validates :weather_forecast_id, :presence => true

  belongs_to :weather_forecast

end
