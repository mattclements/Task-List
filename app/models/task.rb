class Task < ActiveRecord::Base
  before_save :update_completed_at_timestamp
  validates :name, :presence => true
  private
  def update_completed_at_timestamp
    if self.completed_changed? && completed == true
      self.completed_at = Time.now
    else
      self.completed_at = nil
    end
  end
  attr_accessible :completed, :completed_at, :name
end
