class River
  attr_accessor :name, :fish
  def initialize(name)
    @name = name
    @fish = []
  end

  def fish_count
    @fish.count()
  end

  def populate_river(fish)
    @fish << fish
  end

  def remove_fish(fish)
    @river.delete(fish)
  end

  
end
