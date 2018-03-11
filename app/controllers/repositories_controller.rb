class RepositoriesController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  before_action :correct_user, only: :destroy

  def index
    @repositories = current_user.repositories.paginate(page: params[:page])
  end

  def new
    @repository = Repository.new
  end

  def show
    @repository = Repository.find(params[:id])
  end

  def create
    @repository = current_user.repositories.build(repository_params)
    if @repository.save
      flash[:success] = "Repository created"
      redirect_to @repository
    end
  end

  def edit
  end

  def destroy
    @repository.destroy
    flash[:success] = "Repository deleted"
    redirect_to request.referrer || root_url
  end

  private

    def repository_params
      params.require(:repository).permit(:title)
    end

    def correct_user
      @repository = current_user.repositories.find_by(id: params[:id])
      redirect_to root_url if @repository.nil?
    end
end