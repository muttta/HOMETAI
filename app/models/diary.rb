class Diary < ApplicationRecord
  belongs_to  :user

  def start_time
    self.day
  end
end
