class SightingsController < ApplicationController
  def show
    @specie = Specie.find(params[:id])
  end

end
