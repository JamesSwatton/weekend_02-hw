require('minitest/autorun')
require('minitest/rg')
require_relative('../bar_tab')
require_relative('../guest')
require_relative('../drink')



class TestBarTab < Minitest::Test

  def setup
    @drink1 = Drink.new("beer", 3.00)
    @drink2 = Drink.new("wine", 5.00)
    @drink3 = Drink.new("tequila", 2.50)

    @bar_tab = BarTab.new("Studio Two")
  end

  def test_add_drink_to_tab
    @bar_tab.add_drink(@drink1)
    @bar_tab.add_drink(@drink1)
    assert_equal(2, @bar_tab.drinks[@drink1])
  end

  def test_get_drinks_total
    3.times { @bar_tab.add_drink(@drink1) }
    2.times { @bar_tab.add_drink(@drink3) }
    assert_equal(14, @bar_tab.total)
  end

end
