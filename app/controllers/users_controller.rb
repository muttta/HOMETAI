class UsersController < ApplicationController

  def index
    @diaries = Diary.all
  end
  def show
  
  end

end
