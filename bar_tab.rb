require('pry')

class BarTab

  attr_reader :room, :drinks

  def initialize(room)
    @room = room
    @drinks = {}
  end


  def add_drink(drink, quantity)
    if @drinks.has_key?(drink)
      @drinks[drink] += quantity
    else
      @drinks[drink] = quantity
    end
  end

  def total
    total = 0
    for drink in @drinks.keys
      total += (drink.price * @drinks[drink])
    end
    return total
  end

end
