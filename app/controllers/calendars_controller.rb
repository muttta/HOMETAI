class CalendarsController < ApplicationController

  def index
    @calendar = Calendar.new
    @diaries = Diary.all
  end
  def show
    @diary = Diary.find(params[:id])
  end
end
