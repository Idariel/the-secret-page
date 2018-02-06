class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    @user.save
    redirect_to @user
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    def index
      @users = User.all
    end

    def new
      @user = User.new
    end

    def create
      @user = User.create(user_params)
      @user.save
      redirect_to @user
    end

    def show
      @user = User.find(params[:id])
    end

    def edit
      @user = User.find(params[:id])
    end

    def update
      @user = User.find(params[:id])
      if @user.update(user_params)
        redirect_to @user
      else
        render 'edit'
      end
    end

    def destroy
      @user = User.find(params[:id])
      @user.destroy
      redirect_to users_path
    end

    # Utilisé dans create et update
    private
    def user_params # Définir les attributs en paramètres !!!!
      params.require(:user).permit(:email)
    end

  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  # Utilisé dans create et update
  private
  def user_params # Définir les attributs en paramètres !!!!
    params.require(:user).permit(:email)
  end

end
