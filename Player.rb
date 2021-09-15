class Sprite
  def width
    self.image.width
  end
  def height
    self.image.height
  end
end

class Player < Sprite
  attr_accessor :score

  def initialize(x, y, image)
    @score = 0
    super
    #self.scale_x *= 1
    #self.scale_y *= 1
  end

  def update
    limit = 12*80
    self.x += Input.x * 5
    self.y += Input.y * 5
    self.x = (x < 0 ? 0 : limit - width) if x < 0 || x > limit - width
    self.y = (y < 0 ? 0 : limit - height) if y < 0 || y > limit - height
    if x > Window.width / 2 && x < limit - Window.width / 2
      Window.ox = x - Window.width / 2
    elsif x <= Window.width / 2
      Window.ox = 0
    elsif x >= limit - Window.width / 2
      Window.ox = limit - Window.width
    end
    if y > Window.height / 2 && y < limit - Window.height / 2
      Window.oy = y - Window.height / 2
    elsif y <= Window.height / 2
      Window.oy = 0
    elsif y >= limit - Window.height / 2
      Window.oy = limit - Window.height
    end
  end

  def shot
    self.score += 1
  end
end
