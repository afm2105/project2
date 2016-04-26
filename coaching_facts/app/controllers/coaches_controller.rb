class CoachesController < ApplicationController
  def new
  end

  def create
    render plain: params [:coach].inspect
  end
end
