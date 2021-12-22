class Word2 < ActiveHash::Base
  self.data = [
    { id: 1, name: 'よく頑張った!' },
    { id: 2, name: 'えらいぞ!!' },
    { id: 3, name: 'かっこいいよ!!!' },
    { id: 4, name: '立派!' },
    { id: 5, name: 'よく頑張りました!!' },
    { id: 6, name: 'えらい!!' },
    { id: 7, name: 'ゆっくりお風呂に入ろ!' },
    { id: 8, name: 'おつかれさま!' },
    { id: 9, name: '素晴らしい!' },
    { id: 10, name: 'よくやったね!!!' },
    { id: 11, name: '最高!!' }
  ]
  include ActiveHash::Associations
  has_many :diaries
  
end