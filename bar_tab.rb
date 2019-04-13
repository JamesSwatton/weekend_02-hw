require('pry')

class BarTab

  attr_reader :room_name, :drinks

  def initialize(room_name)
    @room_name = room_name
    @drinks = {}
  end


  def add_drink(drink)
    if @drinks.has_key?(drink)
      @drinks[drink] += 1
    else
      @drinks[drink] = 1
    end
  end

  def total
    total = 0
    @drinks.keys.each { |drink| total += (drink.price * @drinks[drink]) }
    return total
  end

end
