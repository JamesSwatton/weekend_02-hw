require_relative('./bar_tab')

class Room

  attr_reader :name, :price, :guests, :songs, :capacity, :bar_tab

  def initialize (name, price, capacity)
    @name = name
    @price = price
    @capacity = capacity
    @guests = []
    @songs = []
    @bar_tab = BarTab.new(name)
  end

  def check_in(guest)
    !full_capacity ? @guests << guest : "Room full!"
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

  def add_drink_to_tab(drink)
    @bar_tab.add_drink(drink)
  end

end
