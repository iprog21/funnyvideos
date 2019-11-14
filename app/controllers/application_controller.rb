class ApplicationController < ActionController::Base
  include ApplicationHelper
  def index
    @movies = Movie.all
  end
end
