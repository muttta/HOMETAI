class Diary < ApplicationRecord
  belongs_to  :user
  validates :user, :category_id, :feeling_id, :day, presence: true
  validates :category_id, :feeling_id, numericality: {other_than: 1, message: "は--以外から選択してください"}

  def start_time
    self.day
  end
end
