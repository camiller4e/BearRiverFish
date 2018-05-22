require("minitest/autorun")
require("minitest/rg")

require_relative("../river")
require_relative("../fish")
require_relative("../bear")

class RiverTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Nicola Sturgeon")
    @fish2 = Fish.new("Marlin Brando")
    @fish3 = Fish.new("Shark Ruffalo")
    @fish4 = Fish.new("Koi Orbison")
    @river = River.new("Yangtze")
  end

  def test_river_has_name
    assert_equal("Yangtze", @river.name)
  end

  def test_fish_count
    assert_equal(0, @river.fish_count)
  end

  def test_populate_river
    @river.populate_river(@fish1)
    @river.populate_river(@fish2)
    @river.populate_river(@fish3)
    @river.populate_river(@fish4)
    assert_equal(4, @river.fish_count)
  end




end
