require_relative "def"

class Enemy < Sprite
  def initialize(x,y,image)
    super
  end
  def hit
    self.vanish
  end
end
