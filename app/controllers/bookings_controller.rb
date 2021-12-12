class BookingsController < ApplicationController

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user_id = User.create!.id
    if @booking.save
      redirect_to booking_cars_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def show

  end

  private

  def booking_params
    params.require(:booking).permit(:departure_location, :arrival_location, :departure_date, :arrival_date, :departure_time, :arrival_time)
  end

end
