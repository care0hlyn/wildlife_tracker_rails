class SightingsController < ApplicationController
  def new
    specie = Specie.find(params[:id])
    @sighting = specie.sightings.new
    render('sightings/new.html.erb')
  end

  def create
    @sighting = Sighting.new(params[:sighting])
    if @sighting.save
      render('sightings/success.html.erb')
    else
      render('sightings/new.html.erb')
    end
  end
end
