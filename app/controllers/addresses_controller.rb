class AddressesController < ApplicationController
  before_action :set_address, only: [:show, :edit, :destroy, :update]
  before_action :set_location

  def index
    @addresses = @location.addresses
  end

  def show
  end

  def new
    @address = @location.address.new
  #  render partial: 'form'
  end

  def create
    @address = @address.location.new(address_params)
    if @address.save
      redirect_to [@location, @address]
    else
      render :new
    end
  end

  def edit
 #   render partial: 'form'
  end

  def update
    if @address.update(address_params)
      redirect_to [@location, @address]
    else
      render :edit
    end
  end

  def destroy
    @address.destroy
    redirect_to location_addresses_path(@location)
  end

  private
    def address_params
      params.require(:address).permit(:street, :city, :state, :zip, :location_id)
    end

  def set_address
    @address = Address.find(params[:location_id])
  end

  def set_location
    @location = Location.find(params[:location_id])
  end

end
