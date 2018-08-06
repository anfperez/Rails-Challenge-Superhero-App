class SuperheroesController < ApplicationController
  def index
    @superheroes = Superhero.all
  end
end
