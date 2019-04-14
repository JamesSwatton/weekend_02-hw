require_relative('./bar_tab')

class Room

  attr_reader :name, :price, :guests, :songs, :capacity, :bar_tab, :entry_fees_total

  def initialize (name, price, capacity)
    @name = name
    @price = price
    @capacity = capacity
    @guests = []
    @songs = []
    @bar_tab = BarTab.new(name)
    @entry_fees_total = 0.0
  end

  def check_in(guest)
    if !full_capacity
      @guests << guest
      @entry_fees_total += @price
    else return "Room full!"
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

  def add_order_to_tab(drink)
    @bar_tab.add_drink(drink)
  end

  def tab_total
    @bar_tab.total
  end

  def session_total
    return @entry_fees_total + @bar_tab.total
  end

end
