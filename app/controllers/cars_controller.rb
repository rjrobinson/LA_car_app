class CarsController < ApplicationController


  def new
    # @manufacturer = Manufacturer.find(params[:manufacturer_id])
    @car = Car.new
  end

  def index
  end

  def show
  end

  def create
    # @manufacturer = Manufacturer.find(params[:manufacturer_id])
    @car = Car.new(car_params)
    if @car.save
      flash[:notice] = 'Car added!'
      redirect_to root_path
    else
      flash[:notice] = "There was an error. Could not save."
      render :new
    end
  end # of create


####################
    # PRIVATE #
####################


  private

    def car_params
    params.require(:car).permit( :model, :color, :milage, :year, :description, :manufacturer_id )
    end

end
