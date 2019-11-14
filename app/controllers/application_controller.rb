class ApplicationController < ActionController::Base
  include ApplicationHelper
  def index
    @movies = Movie.all
    # render json: @movies and return
  end
end
