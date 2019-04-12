require('minitest/autorun')
require('minitest/rg')
require_relative('../song')

class SongTest < Minitest::Test

  def setup
    @song1 = Song.new("Rain", "The Beatles")
  end

  def test_get_song_title
    assert_equal("Rain", @song1.name)
  end

end
