class River
  attr_accessor :name, :fish
  def initialize(name)
    @name = name
    @fish = []
  end

  def fish_count
    return @fish.count()
  end

  def populate_river(fish)
    @fish << fish
  end




end
