class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '勉強' },
    { id: 3, name: 'お仕事' },
  ]
  include ActiveHash::Associations
  has_many :diaries
end