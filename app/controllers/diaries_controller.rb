class DiariesController < ApplicationController
  def index
    @diaries = Diary.new
  end

  def result
    @diaries = Diary.new(pasams_result)
    if params[:login]
      render "devise/sessions/new"
    else
    @diaries = Diary.new(pasams_result)
      random_num
      render :result
    end
  end

  def new
    @diary = Diary.new
  end

  def create
    @diaries = Diary.new(pasams_diaries)
    if @diaries.valid?
      @diaries.save
      redirect_to controller: :users, action: :index
    else
      @diary = @diaries
      render "diaries/new"
    end
  end

  def show
    @diary = Diary.find(params[:id])
  end




  private

  def pasams_result
    params.require(:diary).permit(:category_id, :feeling_id)
  end

  def pasams_diaries
    params.require(:diary).permit(:category_id, :feeling_id, :day, :comment).merge(user_id: current_user.id)
  end

  def random_num
    random = Random.new()
      picknum = []
      5.times do
        picknum.push(random.rand(1..11))
      end
      num1 = picknum[1]
      num2 = picknum[2]
      num3 = picknum[3]
      num4 = picknum[4]
      num5 = picknum[4]


        if @diaries.feeling_id == 2
          @message1 = Word1.find([num1])
          @message2 = Word1.find([num2])
          @message3 = Word1.find([num3])
          @message4 = Word1.find([num4])
          @message5 = Word1.find([num5])
        end
        if @diaries.feeling_id == 3
          @message1 = Word2.find([num1])
          @message2 = Word2.find([num2])
          @message3 = Word2.find([num3])
          @message4 = Word2.find([num4])
          @message5 = Word2.find([num5])
        end
        if @diaries.feeling_id == 4
          @message1 = Word3.find([num1])
          @message2 = Word3.find([num2])
          @message3 = Word3.find([num3])
          @message4 = Word3.find([num4])
          @message5 = Word3.find([num5])
        end
        if @diaries.feeling_id == 5
          @message1 = Word4.find([num1])
          @message2 = Word4.find([num2])
          @message3 = Word4.find([num3])
          @message4 = Word4.find([num4])
          @message5 = Word4.find([num5])
        end
  end
end
