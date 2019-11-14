class SessionsController < ApplicationController
  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end
end