class PullRequestsController < ApplicationController
  def index
    @repositories = current_user.repositories.paginate(page: params[:page])
  end

  def show
  end
end
