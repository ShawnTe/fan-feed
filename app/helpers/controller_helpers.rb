def follower
  @follower ||= Follower.find_or_create_by(phone_number: params[:From])
end


def find_artists(possible_name)
  jarow = FuzzyStringMatch::JaroWinkler.create( :native )
  [].tap |matches|
    Artist.all.each do |artist|
        if jarow.getDistance(  artist.name.downcase, possible_name.downcase ) > 0.85
          mathching_artists << artist
        end
    end
  end
end
