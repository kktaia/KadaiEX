require 'dxruby'

player_img=Image.load("image/player.png")
x=100
y=100

Window.loop do
    Window.draw(x, y, player_img)
    x+=Input.x
    y+=Input.y
end