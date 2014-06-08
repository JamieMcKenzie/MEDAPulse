class Client < ActiveRecord::Base
  belongs_to :user
  has_many :goals
  has_many :messages
end
