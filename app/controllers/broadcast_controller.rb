post '/broadcast' do
  Follower
    .joins(:artists)
    .where(artists: {phone_number: params[:From]})
    .pluck(:phone_number)
    .each(&method(:send_text))
end

def send_text(phone_number)
  content_type = 'text/xml'
  response = Twilio::TwiML::Response.new do |r|
    r.Message params[:Body]
  end

  response.to_xml
end
