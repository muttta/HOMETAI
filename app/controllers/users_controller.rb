class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
    @diary = Diary.new
    @user = current_user.id
    @diaries = Diary.all

    @events = []

    @diaries.each do |diary|
      if diary.user_id == @user
        @events << diary
      end
    end
  end

end
