require('minitest/autorun')
require('minitest/rg')
require_relative('../room')
require_relative('../guest')
require_relative('../song')

class TestRoom < Minitest::Test

  def setup
    @room = Room.new("Studio Two", 4)

    @song1 = Song.new("Rain", "The Beatles")
    @song2 = Song.new("Song 2", "Blur")

    @john = Guest.new("John")
    @paul = Guest.new("Paul")
    @george = Guest.new("George")
    @ringo = Guest.new("Ringo")
  end

  def test_get_room_name
    assert_equal("Studio Two", @room.name)
  end

  def test_check_in_guest
    @room.check_in(@john)
    assert_equal(1, @room.guests.size)
  end

  def test_check_out_guest
    @room.check_in(@ringo)
    @room.check_out(@ringo)
    assert_equal(0, @room.guests.size)
  end

  def test_add_song_to_playlist
    @room.add_song(@song)
    assert_equal(1, @room.songs.count)
  end

end
