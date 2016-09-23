class ArrivalTime < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  before_save :settime


  private
  def settime
    self.time = Time.now
    if self.time.strftime("%H").to_i > 10
      self.lateness = true
    else
      self.lateness = false
    end
  end
end
