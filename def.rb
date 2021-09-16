Window.caption = "MyGame"
Window.bgcolor = C_WHITE


class Sprite
    CELL_SIZE = 40
    def width
      self.image.width
    end
    def height
      self.image.height
    end
end