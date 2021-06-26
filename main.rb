require "./monster.rb"
require "./brave.rb"
require "./character.rb"
require "pry"

brave = Brave.new(name: "勇者", hp: 1000, offense: 150, defense: 150)
monster = Monster.new(name: "アークデーモン", hp: 200, offense: 100, defense: 100)


monster.encounter
loop do
  brave.attack(monster)
  monster.attack(brave)
  brave.disp_hp
  monster.disp_hp
  if brave.hp <= 0 || monster.hp <= 0
    break
  end
end
brave.judge_result(monster)