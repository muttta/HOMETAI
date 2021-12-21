class DiariesController < ApplicationController
  def index
    @diaries = Diary.new
  end
  def result
    @diaries = Diary.new(params_diaries)
    if params[:login]
      render "index"
    else
      @diaries = Diary.new(params_diaries)
      render :result
    end
  end
  def create
  end

  private

  def params_diaries
    params.require(:diary).permit(:category_id, :feeling_id)
  end
end
