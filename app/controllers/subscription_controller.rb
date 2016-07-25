post '/subscribe' do
  params[:Body].split(',').each do |possible_artist|
    find_artists(possible_artist).each do |artist|
      follower.artists << artist
    end
  end
  follower.save
end


post '/unsubscribe' do
  params[:Body].split(',').each do |possible_artist|
    find_artists(possible_artist).each do |artist|
      follower.artists.delete
    end
  end
end


