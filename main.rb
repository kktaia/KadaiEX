# frozen_string_literal: true
require 'dxruby'
require_relative 'Player'
require_relative 'Enemy'

font = Font.new(32)
player_img = Image.load('image/player.png')
enemy_img = Image.load('image/enemy.png')
chip_img = Image.load_tiles('image/mapchip.png', 6, 2)
map = [
  [0, 0, 0, 1, 1, 1, 2, 2, 2, 3, 3, 3],
  [2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5],
  [4, 4, 4, 5, 5, 5, 6, 6, 6, 7, 7, 7],
  [6, 6, 6, 7, 7, 7, 8, 8, 8, 9, 9, 9]
]


player = Player.new(100, 100, player_img)


enemies = []
10.times do
  enemies << Enemy.new(rand(0..(640 - 32 - 1)), rand((480 - 32 - 1)), enemy_img)
end

timer = 600 + 60

Window.loop do
  Window.draw_tile(0, 0, map, chip_img, 0, 0, 12, 4)
  if timer >= 60
    timer -= 1
    player.update
  end

  player.draw

  #Sprite.draw(enemies)
  Window.draw_font(10, 0, "スコア：#{player.score}", font)
  Window.draw_font(10, 32, "残り時間：#{timer / 60}秒", font)

  Sprite.check(player, enemies)
end
