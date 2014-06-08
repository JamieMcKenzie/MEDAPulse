class Message < ActiveRecord::Base
  belongs_to :client
  belongs_to :step
  validates :client, presence:{message: "Message must be associated with client"}
  validates :step, presence:{message: "Message must be associated a step"}

end