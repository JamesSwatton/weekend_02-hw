require('minitest/autorun')
require('minitest/rg')
require_relative('../room')
require_relative('../guest')
require_relative('../song')

class TestRoom < Minitest::Test

  def setup
    @room = Room.new("Studio Two", 5.0, 4)

    @song1 = Song.new("Rain", "The Beatles")
    @song2 = Song.new("Song 2", "Blur")

    @guest1 = Guest.new("John", 10.0, "Help!")
    @guest2 = Guest.new("Paul", 8.0, "Penny Lane")
    @guest3 = Guest.new("George", 5.0, "Something")
    @guest4 = Guest.new("Ringo", 2.0, "Octopusses Garden")
  end

  def test_get_room_name
    assert_equal("Studio Two", @room.name)
  end

  def test_check_in_guest
    @room.check_in(@guest1)
    assert_equal(1, @room.guests.size)
  end

  def test_check_out_guest
    @room.check_in(@guest4)
    @room.check_out(@guest4)
    assert_equal(0, @room.guests.size)
  end

  def test_add_song_to_playlist
    @room.add_song(@song)
    assert_equal(1, @room.songs.count)
  end

  def test_full_capacity
    4.times do
      @room.check_in(@guest2)
    end
    assert_equal(true, @room.full_capacity)
  end

  def test_no_check_in_if_full_capacity
    5.times do
      @room.check_in(@guest2)
    end
    assert_equal(4, @room.guests.count)
  end

  def test_add_drink_to_tab
    @room.add_drink_to_tab(@drink1, 2)
    assert_equal(2, @room.bar_tab.drinks[@drinks1])
  end

end
