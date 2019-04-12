class Guest

  attr_reader :name, :wallet

  def initialize (name, wallet)
    @name = name
    @wallet = wallet
  end

  def can_afford_room(room)
    return room.price <= @wallet
  end

  def pay_for_room(room)
    if can_afford_room(room)
      @wallet -= room.price
    end
  end

end
