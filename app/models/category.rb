class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '勉強' },
    { id: 3, name: '仕事' },
    { id: 4, name: '家事' },
    { id: 5, name: '育児' },
    { id: 6, name: '人付き合い' },
    { id: 7, name: 'その他いろいろ' },
  ]
  include ActiveHash::Associations
  has_many :diaries
  
end