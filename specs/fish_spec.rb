require("minitest/autorun")
require("minitest/rg")

require_relative("../fish")
require_relative("../river")
require_relative("../bear")

class FishTest < MiniTest::Test

  def setup
    @fish = Fish.new("Stingray")
  end

  def test_fish_has_name
    assert_equal("Stingray", @fish.name)
  end




  end
