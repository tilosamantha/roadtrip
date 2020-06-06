class TripsController < ApplicationController
  # before_action :set_trip, only: [:show, :edit, :destroy, :update]

  def index
    @trips = Trip.all        
  end

  def show
    @trip = Trip.find(params[:id])
    # render show.html.erb
  end

  def new
    @trip = Trip.new
    #render partial: 'form'
    # render new.html.erb
  end

  def create
    @trip = Trip.new(trip_params)
    if @trip.save
      redirect_to trips_path
    else
      render :new
    end
  end

  def edit
    @trip = Trip.find(params[:id])
    #render partial: 'form'

  end

  def update    #look up a particular record and return the record
    @trip = Trip.find(params[:id])
    if @trip.update(trip_params)
      redirect_to trips_path
    else
      render :edit
    end
  end

  def destroy
    # @sub = Sub.find(params[:id])
    # @sub.destroy
    # redirect_to subs_path

    Trip.find(params[:id]).destroy
    redirect_to trips_path
  end

  private
   def trip_params
    params.require(:trip).permit(:name, :start_date, :end_date)
   end
end
