class Bear
  attr_accessor :name, :type, :stomach
  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

def eat_fish(fish)
  @stomach << fish
end

def stomach_contents
  return @stomach.count()
end

def bear_roars
  return "Rooooaar."
end




end
