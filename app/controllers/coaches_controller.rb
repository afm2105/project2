class CoachesController < ApplicationController
  def index
    @coaches = Coach.all
  end

  def show
    @coach = Coach.find(params[:id])
  end

  def new
    @coach = Coach.new
  end

  def edit
    @coach = Coach.find(params[:id])
  end

  def create
    # render plain: params [:coach].inspect
    # @coach = Coach.new(params.require(:coach).permit(:name, :tidbit))
    @coach = Coach.new(coach_params)

    if @coach.save
    redirect_to @coach
  else
    render 'new'
  end
end

  private
    def coach_params
      params.require(:coach).permit(:name, :tidbits)
    end
end
