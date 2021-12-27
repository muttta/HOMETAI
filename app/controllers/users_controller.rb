class UsersController < ApplicationController

  def index
    @diaries = Diary.all
  end

end
