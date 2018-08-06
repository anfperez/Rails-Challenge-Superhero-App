class SuperheroesController < ApplicationController
  def index
    @superheroes = Superhero.all
  end

  def show
    @superhero = Superhero.find(params[:name])
  end

  def new
  end

  def create
    # render plain: params[:superhero].inspect
    @superhero = Superhero.new(superhero_params)

    @superhero.save

    redirect_to @superhero
  end

  private def superhero_params
    params.require(:superhero).permit(:name, :super_name)
  end

end
