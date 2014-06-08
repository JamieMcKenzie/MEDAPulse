class Client < ActiveRecord::Base
  has_many :goals
  has_many :messages
end
