require "dxruby"

player_img = Image.load('image/player.png')
x = 100
y = 100
player = Sprite.new(x, y, player_img)

Window.loop do
  player.x += Input.x
  player.y+=Input.y
end
