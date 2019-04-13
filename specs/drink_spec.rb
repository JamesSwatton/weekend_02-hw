require('minitest/autorun')
require('minitest/rg')
require_relative('../drink')

class TestDrink < Minitest::Test

  def setup
    @drink1 = Drink.new("beer", 3.00)
    @drink2 = Drink.new("wine", 5.00)
    @drink3 = Drink.new("tequila", 2.50)
  end


  def test_get_drink_name
    assert_equal("beer", @drink1.name)
  end

  def test_get_drink_price
    assert_equal(3.00, @drink1.price)
  end

end
