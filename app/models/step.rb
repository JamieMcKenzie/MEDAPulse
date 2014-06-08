class Step < ActiveRecord::Base
  belongs_to :goal
  has_many :messages
end
