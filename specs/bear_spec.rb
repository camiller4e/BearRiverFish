require("minitest/autorun")
require("minitest/rg")

require_relative("../bear")
require_relative("../river")
require_relative("../fish")

class BearTest < MiniTest::Test

  def setup
    @river1 = River.new("Clyde")
    @fish1 = Fish.new("Nicola Sturgeon")
    @fish2 = Fish.new("Marlin Brando")
    @fish3 = Fish.new("Shark Ruffalo")
    @fish4 = Fish.new("Koi Orbison")
    @bear = Bear.new("Baloo", "Himalayan Brown")
  end

def test_bear_has_name
  assert_equal("Baloo", @bear.name)
end

def test_bear_has_type
  assert_equal("Himalayan Brown", @bear.type)
end

def test_bear_is_a_hungry_boy
  assert_equal([], @bear.stomach)
end

def test_stomach_contents
  assert_equal(0, @bear.stomach_contents())
end

def test_bear_eats_fish
  @bear.eat_fish(@fish2)
  assert_equal(1, @bear.stomach_contents)
  assert_equal(0, @river.fish_count)
end

def test_bear_can_roar
  assert_equal("Rooooaar.", @bear.bear_roars)
end

# def test_river_loses_fish
#   # @river.populate_river([@fish1, @fish2, @fish3])
#   @bear.eat_fish(@fish2)
#   assert_equal(1, @river1.fish_count)
# end




end
