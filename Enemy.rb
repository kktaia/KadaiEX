require_relative "def"

class Enemy < Sprite
  def initialize(x,y,image)
    super
    self.scale_x *= (CELL_SIZE/width.to_f)
    self.scale_y *= (CELL_SIZE/height.to_f)
  end
  def hit
    self.vanish
  end
end
