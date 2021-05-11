class CoachesController < ApplicationController
  def show
    @coach = Coach.find(params[:id])
  end

  def index
    @coaches = Coach.all
  end

  def edit
  end
end
