require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')
require_relative('../room')
require_relative('../song')
require_relative('../drink')


class TestGuest < Minitest::Test

  def setup
    @song = Song.new("I Am the Walrus!", "The Beatles")
    @room = Room.new("Studio Two", 5.0, 4)
    @guest1 = Guest.new("John", 10.0, @song)

    @drink1 = Drink.new("beer", 3.00)
  end

  def test_get_guest_name
    assert_equal("John", @guest1.name)
  end

  def test_can_afford_room
    assert_equal(true, @guest1.can_afford_room(@room))
  end

  def test_pay_for_room
    @guest1.pay_for_room(@room)
    assert_equal(5.0, @guest1.wallet)
  end

  def test_get_fav_song
    assert_equal(@song, @guest1.fav_song)
  end

  def test_can_cheer_if_fav_song_is_on_room_playlist
    @room.add_song(@song)
    assert_equal("Goo goo g'joob!", @guest1.cheer_if_fav_song_on_playlist(@room))
  end

  def test_can_afford_drink
    assert_equal(true, @guest1.can_afford_drink(@drink1))
  end

  def test_can_order_drink
    assert_equal(@drink1, @guest1.order_drink(@drink1))
  end

end
