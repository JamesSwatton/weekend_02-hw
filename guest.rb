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
    @wallet -= room.price if can_afford_room(room)
  end

  def cheer_if_fav_song_on_playlist(room)
    return "Goo goo g'joob!" if room.songs.include?(@fav_song)
  end

  def can_afford_drink(drink)
    return drink.price <= @wallet
  end

  def order_drink(drink)
    return drink if can_afford_drink(drink)
  end

end
