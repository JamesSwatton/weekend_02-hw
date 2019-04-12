class Room

  attr_reader :name, :guests, :songs, :capacity

  def initialize (name, capacity)
    @name = name
    @capacity = capacity
    @guests = []
    @songs = []
  end

  def check_in(guest)
    @guests << guest
  end

  def check_out(guest)
    @guests.delete(guest)
  end

end
