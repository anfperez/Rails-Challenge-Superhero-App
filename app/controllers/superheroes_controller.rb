class SuperheroesController < ApplicationController
  def index
    @superheroes = Superhero.all

  end

  def show
    @superhero = Superhero.find(params[:id])
  end

  def new
    @superhero = Superhero.new
  end

  def create
    # render plain: superhero_params[:superhero].inspect
    @superhero = Superhero.new(superhero_params)

    if(@superhero.save)
      redirect_to @superhero
    else
      render 'new'
    end
  end

  private def superhero_params
    params.require(:superhero).permit(:id, :name, :super_name, :superpower_name)
  end

end
