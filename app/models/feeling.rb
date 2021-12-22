class Feeling < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '最高です!!' },
    { id: 3, name: '正直つかれた' },
    { id: 4, name: 'ちょっとしんどい' },
    { id: 5, name: 'つらくて辞めたい' }
  ]
  include ActiveHash::Associations
  has_many :diaries
  
end