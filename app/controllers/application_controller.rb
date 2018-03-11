class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  def show
    @user = User.find(params[:id])
    @repositories = current_user.repositories.paginate(page: params[:page])
  end

  private

    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
end
