class MessageService
  def self.send_message(phone_number:, message:)
    client.messages.create(
      to: phone_number,
      from: ENV['TWILIO_NUMBER'],
      body: message
    )
  end

  def self.broadcast(phone_numbers:, message:)
    phone_numbers.each do |n| 
      send_message(phone_number: n, message: message)
    end
  end

  private

  def self.client
    @client ||= Twilio::REST::Client.new(
      ENV['TWILIO_ACCOUNT_SID'],
      ENV['TWILIO_AUTH_TOKEN']
    )
  end
end
