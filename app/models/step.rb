class Step < ActiveRecord::Base
  validates_presence_of :content, :status, :by_when
  validates_associated :messages

  belongs_to :goal
  has_many :messages
end
