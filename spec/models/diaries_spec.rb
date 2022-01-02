require 'rails_helper'

RSpec.describe Diary, type: :model do
  before do
    @diary = FactoryBot.build(:diary)
  end

  describe '日記の保存' do

    context '日記の保存ができる時' do
      it'comment,category_id,feeling_id,dayが空でないとき' do
        expect(@diary).to be_valid
      end
    end

    context'日記の保存ができないとき' do
      it 'category_idが空では登録ができない' do
        @diary.category_id = nil
        @diary.valid?
        expect(@diary.errors.full_messages).to include("Category can't be blank")
      end
      it 'feeling_idが空では登録ができない' do
        @diary.feeling_id = nil
        @diary.valid?
        expect(@diary.errors.full_messages).to include("Feeling can't be blank")
      end
      it 'dayが空では登録ができない' do
        @diary.day = nil
        @diary.valid?
        expect(@diary.errors.full_messages).to include("Day can't be blank")
      end
      it 'userが紐づいていないと保存ができない' do
        @diary.user = nil
        @diary.valid?
        expect(@diary.errors.full_messages).to include("User must exist")
      end
      it 'category_idが１のときは保存ができない' do
        @diary.category_id = 1
        @diary.valid?
        expect(@diary.errors.full_messages).to include("Category は--以外から選択してください")
      end
      it 'feeling_idが１のときは保存ができない' do
        @diary.feeling_id = 1
        @diary.valid?
        expect(@diary.errors.full_messages).to include("Feeling は--以外から選択してください")
      end
  end
  end
end
