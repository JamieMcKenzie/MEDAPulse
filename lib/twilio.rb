module Twilio
  extend self
  ACCT_SID = ENV['TWILIO_ACCT_SID']
  AUTH_TOKEN = ENV['TWILIO_AUTH_TOKEN']
  FROM_NUM = ENV['TWILIO_NUMBER']

  def send_message(number, message)
    begin
      client = Twilio::REST::Client.new(ACCT_SID, AUTH_TOKEN)
      message_details = {
        to: number,
        from: FROM_NUM,
        body: message
      }
      message = client.account.messages.create(message_details)
      true
    rescue Twilio::REST::RequestError => e
      self.handle_error(e.message)
      false
    end
  end

  def handle_error(error_message)
    error_message # Determine where to send/display error message
  end
end