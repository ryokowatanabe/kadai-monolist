class UsersController < ApplicationController
    before_action :require_user_logged_in, only: [:show]
  def show
    @user = User.find(params[:id])
  
    if @user.save
      flash[:success] = 'ユーザを登録しました。'
      redirect_to @user
    else
      flash.now[:danger] = 'ユーザの登録に失敗しました。'
      render :new
    end
  end

  def new
    @user = User.new
  end

  def create
  end
end
