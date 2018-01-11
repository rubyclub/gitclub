class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to @user, notice: 'Пользователь был успешно создан.'
    else
      redirect_to new_user_path, alert: 'Пароль или логин неверен'
    end
  end

  def edit
  end

  def update
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
  end

  private

  def user_params
    params.permit(:name, :email, :password, :password_confirmation)
  end
end
