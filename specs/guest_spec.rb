require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')
require_relative('../room')
require_relative('../song')

class TestGuest < Minitest::Test

  def setup
    @song = Song.new("I Am the Walrus!", "The Beatles")
    @room = Room.new("The Smell", 5.0, 4)
    @john = Guest.new("John", 10.0, @song)
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

  def test_get_fav_song
    assert_equal(@song, @john.fav_song)
  end

  def test_can_cheer_if_fav_song_is_on_room_playlist
    @room.add_song(@song)
    assert_equal("Goo goo g'joob!", @john.cheer_if_fav_song_on_playlist(@room))
  end

end
