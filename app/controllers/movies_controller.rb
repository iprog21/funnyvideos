class MoviesController < ApplicationController

  def new
    @movie = Movie.new
  end


  def create
    @movie = Movie.new(movie_params)
    @movie.user = current_user
    @movie.save(validate: false)
    redirect_to root_url
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def movie_params
      params.require(:movie).permit(:user_id, :title, :description, :url, :likes, :dislikes)
    end
end
