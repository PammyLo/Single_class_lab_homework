class Fridge

attr_accessor :colour, :height, :type
attr_reader :degrees
# attr_writer : allows to change an attribute but not print it

def initialize(colour, heigt, degrees, type)
  @colour = colour
  @height = height
  @degrees = 0
  @type = type
end

def change_temp(degrees)
  @degrees += degrees
end

def freeze(type)
  @type = fridge_freezer
end

end
