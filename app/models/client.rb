class Client < ActiveRecord::Base
  validates_presence_of :name, :phone, :salesforce_id
  validates :phone, length: { is: 10 }
  validates :salesforce_id, length: { is: 7 }

  validates_uniqueness_of :salesforce_id
  validates_associated :goals
  validates_associated :messages

  belongs_to :user
  has_many :goals
  has_many :messages
end
