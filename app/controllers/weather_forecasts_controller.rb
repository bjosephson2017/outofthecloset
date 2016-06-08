class WeatherForecastsController < ApplicationController
  #has_many :clothings , :class_name => "Clothing", :foreign_key => "weather_forecast_id"
  def index
    @weather_forecasts = WeatherForecast.all
  end

  def show
    @weather_forecast = WeatherForecast.find(params[:id])
  end

  def new
    @weather_forecast = WeatherForecast.new
  end

  def create
    @weather_forecast = WeatherForecast.new
    @weather_forecast.temperature_f = params[:temperature_f]
    @weather_forecast.forecast = params[:forecast]
    @weather_forecast.state = params[:state]
    @weather_forecast.city = params[:city]

    if @weather_forecast.save
      redirect_to "/weather_forecasts", :notice => "Weather forecast created successfully."
    else
      render 'new'
    end
  end

  def edit
    @weather_forecast = WeatherForecast.find(params[:id])
  end

  def update
    @weather_forecast = WeatherForecast.find(params[:id])

    @weather_forecast.temperature_f = params[:temperature_f]
    @weather_forecast.forecast = params[:forecast]
    @weather_forecast.state = params[:state]
    @weather_forecast.city = params[:city]

    if @weather_forecast.save
      redirect_to "/weather_forecasts", :notice => "Weather forecast updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @weather_forecast = WeatherForecast.find(params[:id])

    @weather_forecast.destroy

    redirect_to "/weather_forecasts", :notice => "Weather forecast deleted."
  end
end
