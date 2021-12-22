class Word1 < ActiveHash::Base
  self.data = [
    { id: 1, name: 'さすがっ!' },
    { id: 2, name: 'えらいぞ!!' },
    { id: 3, name: '最高!!!' },
    { id: 4, name: '立派だよー!' },
    { id: 5, name: 'よく頑張りました!!' },
    { id: 6, name: 'えらい!!' },
    { id: 7, name: 'カッコイイ!' },
    { id: 8, name: '素敵です!' },
    { id: 9, name: '素晴らしい!' },
    { id: 10, name: 'コンビニで好きなもの買っちゃおう！' },
    { id: 11, name: '完璧です!!' }
  ]
  include ActiveHash::Associations
  has_many :diaries
  
end