class Enemy < Sprite
  def initialize(x,y,image)
    self .scale_x*=0.2
    self .scale_y*=0.2
    super
  end
  def hit
    self.vanish
  end
end
