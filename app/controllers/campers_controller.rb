class CampersController < ApplicationController
  before_action :find_camper, only: [:show, :edit, :update]
  
  def index
    @campers = Camper.all
  end

  def show
    find_camper
  end

  def new
    @camper = Camper.new
  end

  def create
    @camper = Camper.create(camper_params)
    redirect_to camper_path(@camper)
  end

  def edit
    find_camper
  end

  def update
    find_camper
    @camper.update(camper_params)
    redirect_to camper_path(@camper)
  end

  private
  def camper_params
    params.require(:camper).permit(:name, :age)
  end

  def find_camper
    @camper = Camper.find(params[:id])
  end
end
