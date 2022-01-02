require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー登録' do

    context 'ユーザー登録ができる時' do
      it 'nickname,birthday,email,password,password_confirmationが空でないとき' do
        expect(@user).to be_valid
      end
    end

    context 'ユーザー登録ができないとき' do
      it 'nicknameが空のときは保存ができない' do
        @user.nickname = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Nickname can't be blank")
      end
      it 'emailが空のときは保存ができない' do
        @user.email = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Email can't be blank")
      end
      it 'passwordが空のときは保存ができない' do
        @user.password = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Password can't be blank")
      end
      it 'password_confirmationが空のときは保存ができない' do
        @user.password_confirmation = nil
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation は半角英数字混合で入力してください")
      end
      it 'passwordとpassword_confirmationが同じでないと保存ができない' do
        @user.password = '111aaa'
        @user.password_confirmation = '222bbb'
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end
      it 'passwordは数字のみでは登録ができない' do 
        @user.password = '111111'
        @user.password_confirmation = '111111'
        @user.valid?
        expect(@user.errors.full_messages).to include("Password は半角英数字混合で入力してください")
      end
      it 'passwordは英字のみでは登録ができない' do 
        @user.password = 'aaaaaa'
        @user.password_confirmation = 'aaaaaa'
        @user.valid?
        expect(@user.errors.full_messages).to include("Password は半角英数字混合で入力してください")
      end
      it 'passwordは5文字以下では登録ができない' do
        @user.password = '111aa'
        @user.valid?
        expect(@user.errors.full_messages).to include("Password is too short (minimum is 6 characters)")
      end
    end
  end
end
