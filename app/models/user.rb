class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname,        presence: true
  validates :password, :password_confirmation, format: { with: (/\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i), message: "は半角英数字混合で入力してください" }
  has_many :diaries
  
  
end
