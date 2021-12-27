class UsersController < ApplicationController

  def index
    @diary = Diary.new
  end
  def new
    @user = current_user.id
    @diaries = Diary.all

    @events = []

    @diaries.each do |diary|
      if diary.user_id == 2
        @events << diary
      end
    end


    @diary = Diary.new
  end

end
