class WeatherForecast < ActiveRecord::Base

  validates :temperature_f, :presence => true, :numericality => { :only_integer => true, :greater_than_or_equal_to => -50, :less_than_or_equal_to => 130 }
  validates :forecast, :presence => true
  validates :state, :presence => true
  validates :city, :presence => true

  has_many :clothings
end
