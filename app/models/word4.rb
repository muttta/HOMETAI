class Word4 < ActiveHash::Base
  self.data = [
    { id: 1, name: '今日1日よくがんばりました!' },
    { id: 2, name: 'えらいぞ!!' },
    { id: 3, name: 'よく頑張った!!!' },
    { id: 4, name: '立派だった！' },
    { id: 5, name: '今日はついてなかっただけ!早く寝よう！' },
    { id: 6, name: 'おやすみできないかな?' },
    { id: 7, name: 'ごはんは食べられそう？' },
    { id: 8, name: 'よく頑張ったね' },
    { id: 9, name: 'お風呂にはいって、寝よう。' },
    { id: 10, name: '次のお休みタイミングで好きなことフルコース!' },
    { id: 11, name: '猫ちゃん動画みよっか?' }
  ]
  include ActiveHash::Associations
  has_many :diaries
  
end