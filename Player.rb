class Player < Sprite
  attr_accessor :score

  def initialize(x,y,image)
    @score = 0
    super
  end

  def update
    self.x += Input.x * 5
    self.y += Input.y * 5
  end

  def shot
    self.score += 1
  end
end
