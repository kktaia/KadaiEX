require_relative "def"

class Player < Sprite
  attr_accessor :score

  def initialize(x, y, image)
    @score = 0
    super
  end

  def update
    limit = 12 * 80
    self.x += Input.x * 5
    self.y += Input.y * 5
    self.x = (x.negative? ? 0 : limit - width) if x.negative? || x > limit - width
    self.y = (y.negative? ? 0 : limit - height) if y.negative? || y > limit - height

    Window.ox = if x <= Window.width / 2
      0
    elsif x >= limit - Window.width / 2
      limit - Window.width
    else
      x - Window.width / 2
                end

    Window.oy = if y <= Window.height / 2
      0
    elsif y >= limit - Window.height / 2
      limit - Window.height
    else
      y - Window.height / 2
                end
  end

  def shot
    self.score += 1
  end
end
