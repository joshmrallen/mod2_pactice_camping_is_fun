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
    if @camper.valid?
      redirect_to camper_path(@camper)
    else
      flash[:errors] = @camper.errors.full_messages
      redirect_to new_camper_path
    end
  end

  def edit
    find_camper
  end

  def update
    find_camper
    @camper.update(camper_params)
    if @camper.valid?
      redirect_to camper_path(@camper)
    else
      flash[:errors] = @camper.errors.full_messages
      redirect_to edit_camper_path
    end
  end

  private
  def camper_params
    params.require(:camper).permit(:name, :age)
  end

  def find_camper
    @camper = Camper.find(params[:id])
  end
end
