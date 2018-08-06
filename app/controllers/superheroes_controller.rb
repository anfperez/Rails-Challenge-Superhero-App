class SuperheroesController < ApplicationController
  def index
    @superheroes = Superhero.all
  end

  def new
  end

  def create
    render plain: params[:superhero].inspect
  end

end
