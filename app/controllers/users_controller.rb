class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to new_session_path(@user.id)
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
    if current_user.present?
      @favorites_blogs = current_user.favorite_blogs
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path, notice: "ユーザ情報を編集しました！"
    else
      render 'edit'
    end
  end


  def edit
    if "#{current_user.id}" == params[:id]
      @user = User.find(params[:id])
    else
      redirect_to user_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:name,:email,:password,:password_confirmation,:image,:image_cache)
  end
end
