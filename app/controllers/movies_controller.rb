class MoviesController < ApplicationController
before_action :set_restaurant, only: %i[ show ]


  def index
    @movies = Movie.all
  end

  def show
  end

  private

  # Use callbacks to share common setup or constraints
  # between actions.

  def set_movie
    @movie = Movie.find(params[:id])
   end
end
