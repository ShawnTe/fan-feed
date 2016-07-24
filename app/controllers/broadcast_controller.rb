post '/broadcast' do
  # p params
  # p params[:body]
  # p params['Body']
  # p params[:Body]
  MessageService.broadcast(
    phone_numbers: follower_numbers,
    message: params[:Body],
  )
end

def follower_numbers
  Follower
    .joins(:artists)
    .where(artists: {phone_number: params[:From]})
    .pluck(:phone_number)
end
