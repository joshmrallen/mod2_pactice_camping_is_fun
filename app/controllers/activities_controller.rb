class ActivitiesController < ApplicationController
  before_action :find_activity, only: [:show, :edit, :update]

  def index
    @activities = Activity.all
  end

  def show
    find_activity
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.create(activities_params)
    redirect_to activity_path(@activity)
  end

  def edit
    find_activity
  end

  def update
    find_activity
    @activity.update(activities_params)
    redirect_to activity_path(@activity)
  end

  private
  def activities_params
    params.require(:activity).permit(:name, :difficulty)
  end

  def find_activity
    @activity = Activity.find(params[:id])
  end
end
