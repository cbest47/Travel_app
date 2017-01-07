class TripsController < ApplicationController

  def index
    @trips = Trip.all
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.create(trip_params)
    if @trip.save
      redirect_to trips_path
    else
      redirect_to new_trip_path(@trip)
    end
  end

  def edit
    @trip = Trip.find(params[:id])
  end

  def update
    @trip = Trip.find(params[:id])
    if @trip.update_attributes(trip_params)
      redirect_to trips_path
    else
      flash[:error] = @trip.errors.full_messages
      redirect_to edit_trip_path(@trip)
    end
  end

  def destroy
    @trip = Trip.find(params[:id])
    @trip.destroy
    redirect_to trips_path
  end

  def show
    @trip = Trip.find(params[:id])
  end


  private

  def trip_params
    params.require(:trip).permit(:user_id, :name, :city, :country, :date)
  end


end
