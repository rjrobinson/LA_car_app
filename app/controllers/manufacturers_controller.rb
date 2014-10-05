class ManufacturersController < ApplicationController

  def index
    @manufacturers = Manufacturer.all
  end

  def new
    @manufacturer = Manufacturer.new
  end

  def create
    @manufacturer = Manufacturer.new(manufacturer_params)

    if @manufacturer.save
      flash[:notice] = 'Manufacturer added!'
      redirect_to manufacturers_path
    else
      flash[:notice] = "There was an error. Could not save."
      render :new
    end
  end # of create

  def show
  end



  private

    def manufacturer_params
    params.require(:manufacturer).permit( :name, :country )
    end

end
