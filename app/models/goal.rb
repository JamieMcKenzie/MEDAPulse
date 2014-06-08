class Goal < ActiveRecord::Base
  validates_presence_of :content, :category

  belongs_to :client
end
