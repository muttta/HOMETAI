class UsersController < ApplicationController

  def index
    @diaries = Diary.new
  end
  def create
    @users = User.new(params_users)
    if params[:login]
      render "index"
    else
      @user = User.new(params_users)
      render "new"
    end
  end
  def new
    @user = User.new
  end

  private

  def params_users
    params.require(:user).permit(:category_id, :feeling_id)
  end
end
