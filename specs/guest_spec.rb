require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')

class TestGuest < Minitest::Test

  def setup
    @john = Guest.new("John")
  end

  def test_get_guest_name
    assert_equal("John", @john.name)
  end


end
