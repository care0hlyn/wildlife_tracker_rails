class SpeciesController < ApplicationController
  def index
    @species = Specie.all
    render('species/index.html.erb')
  end

  def show
    @specie = Specie.find(params[:id])
    render('species/show.html.erb')
  end
end
