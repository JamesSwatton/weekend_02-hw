require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')
require_relative('../room')

class TestGuest < Minitest::Test

  def setup
    @room = Room.new("The Smell", 5.0, 4)
    @john = Guest.new("John", 10.0)
  end

  def test_get_guest_name
    assert_equal("John", @john.name)
  end

  def test_can_afford_room
    assert_equal(true, @john.can_afford_room(@room))
  end

  def test_pay_for_room
    @john.pay_for_room(@room)
    assert_equal(5.0, @john.wallet)
  end

  

end
