class Feeling < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '嬉しい！楽しい！' },
    { id: 3, name: 'しんどい！つかれた！' },
  ]
  include ActiveHash::Associations
  has_many :diaries
  
end