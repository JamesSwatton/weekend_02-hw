class Room

  attr_reader :name, :price, :guests, :songs, :capacity, :entry_fees_total

  def initialize (name, price, capacity)
    @name = name
    @price = price
    @capacity = capacity
    @guests = []
    @songs = []
  end

  def check_in(guest)
    if !full_capacity
      @guests << guest
    else
      return "Room full!"
    end

  end

  def check_out(guest)
    @guests.delete(guest)
  end

  def add_song(song)
    @songs << song
  end

  def full_capacity
    return @guests.count == @capacity
  end

end
