class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end

  def new
    @car = current_admin.cars.build
  end

  def create
    @car = current_admin.cars.build(car_params)

    if @car.save
      redirect_to @car
    else
      render 'new'
    end
  end

  private
    def car_params
      params.require(:car).permit(:title, :description, :image)
    end
end
