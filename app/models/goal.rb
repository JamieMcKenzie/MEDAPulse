class Goal < ActiveRecord::Base
  validates_presence_of :content, :category

  has_many :steps
  belongs_to :client
end
