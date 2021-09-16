require_relative "def"

class Player < Sprite
  attr_accessor :score

  def initialize(x, y, image)
    @score = 0
    super
    self.scale_x *= (CELL_SIZE/width.to_f)
    self.scale_y *= (CELL_SIZE/height.to_f)
  end

  def update
    limit = 12*80
    self.x += Input.x * 5
    self.y += Input.y * 5
    self.x = (x < 0 ? 0 : limit - width) if x < 0 || x > limit - width
    self.y = (y < 0 ? 0 : limit - height) if y < 0 || y > limit - height
    
    if x <= Window.width / 2
      Window.ox = 0
    elsif x >= limit - Window.width / 2
      Window.ox = limit - Window.width
    else
      Window.ox = x - Window.width / 2
    end
      
    if y <= Window.height / 2
      Window.oy = 0
    elsif y >= limit - Window.height / 2
      Window.oy = limit - Window.height
    else
      Window.oy = y - Window.height / 2
    end
  end

  def shot
    self.score += 1
  end
end
