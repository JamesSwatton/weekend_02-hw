class Guest

  attr_reader :name, :wallet, :fav_song

  def initialize (name, wallet, fav_song)
    @name = name
    @wallet = wallet
    @fav_song = fav_song
  end

  def can_afford_room(room)
    return room.price <= @wallet
  end

  def pay_for_room(room)
    if can_afford_room(room)
      @wallet -= room.price
    end
  end

  def cheer_if_fav_song_on_playlist(room)
    if room.songs.include?(@fav_song)
      return "Goo goo g'joob!"
    end
  end

end
