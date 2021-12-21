class DiariesController < ApplicationController
  def index
    @diaries = Diary.new
  end
  def new
    @diaries = Diary.new(params_users)
    if params[:login]
      render "index"
    else
      @diaries = Diary.new(params_users)
      render :new
    end
  end
  def create
  end

  private

  def params_users
    params.require(:user).permit(:category_id, :feeling_id)
  end
end
