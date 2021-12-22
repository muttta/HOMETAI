class Word3 < ActiveHash::Base
  self.data = [
    { id: 1, name: 'よく頑張りました!' },
    { id: 2, name: 'えらいぞ!!' },
    { id: 3, name: '早く寝よ!!!' },
    { id: 4, name: '立派だったよ!' },
    { id: 5, name: 'ごはんはちゃんと食べて!' },
    { id: 6, name: 'えらい!!' },
    { id: 7, name: 'お疲れ様!!!!' },
    { id: 8, name: 'かっこよかったさ！' },
    { id: 9, name: '頑張ったね！猫ちゃんの動画でもみる?' },
    { id: 10, name: 'そんな日は寝るに限る!' },
    { id: 11, name: 'お疲れ様です!!!' }
  ]
  include ActiveHash::Associations
  has_many :diaries
  
end