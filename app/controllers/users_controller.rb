class UsersController < ApplicationController
  before_action :search_user, only: [:create]

  def create
    if not @user.nil? 
      if @user && @user.authenticate(params[:user][:password])
        session[:user_id] = @user.id
      end
    else
      @user = User.new(user_params)
      @user.save
      session[:user_id] = @user.id
    end
    redirect_to root_path
  end

  private

    def search_user
      @user = User.find_by_email(params[:user][:email])
    end
        
    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
end
