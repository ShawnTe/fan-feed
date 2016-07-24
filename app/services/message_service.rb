require "twilio-ruby"
require "dotenv"
Dotenv.load

class MessageService
  def self.send_message(phone_number)
    to = phone_number
    # message = params[:body]
    message = "hello world?"

    client.messages.create(
      to: to,
      from: ENV['TWILIO_NUMBER'],
      body: message
    )
  end

  private

  def self.client
    @client ||= Twilio::REST::Client.new(
      ENV['TWILIO_ACCOUNT_SID'],
      ENV['TWILIO_AUTH_TOKEN']
    )
  end
end

MessageService.send_message("+14156134429")
