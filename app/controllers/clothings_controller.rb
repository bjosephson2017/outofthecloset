class ClothingsController < ApplicationController
  def index
    @clothings = Clothing.all
  end

  def show
    @clothing = Clothing.find(params[:id])
  end

  def new
    @clothing = Clothing.new
  end

  def create
    @clothing = Clothing.new
    @clothing.weather_forecast_id = params[:weather_forecast_id]
    @clothing.size = params[:size]
    @clothing.color = params[:color]
    @clothing.brand = params[:brand]
    @clothing.type = params[:type]

    if @clothing.save
      redirect_to "/clothings", :notice => "Clothing created successfully."
    else
      render 'new'
    end
  end

  def edit
    @clothing = Clothing.find(params[:id])
  end

  def update
    @clothing = Clothing.find(params[:id])

    @clothing.theme_id = params[:theme_id]
    @clothing.weather_forecast_id = params[:weather_forecast_id]
    @clothing.size = params[:size]
    @clothing.color = params[:color]
    @clothing.brand = params[:brand]
    @clothing.type = params[:type]

    if @clothing.save
      redirect_to "/clothings", :notice => "Clothing updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @clothing = Clothing.find(params[:id])

    @clothing.destroy

    redirect_to "/clothings", :notice => "Clothing deleted."
  end
end
