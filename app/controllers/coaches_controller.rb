class CoachesController < ApplicationController
  def show
    @coach = Coach.find(params[:id])
  end

  def new
  end

  def create
    # render plain: params [:coach].inspect
    @coach = Coach.new(params.require(:coach).permit(:name, :tidbit))

    @coach.save
    redirect_to @coach
  end

  private
    def coach_params
      params.require(:coach).permit(:name, :tidbits)
    end
end
