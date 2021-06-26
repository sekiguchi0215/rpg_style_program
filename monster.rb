require './character.rb'

class Monster < Character

  def encounter
    puts "#{@name}があらわれた！"
  end
  #{}

  def attack(brave)
    puts "#{@name} の攻撃！"
    damage_point = @offense - brave.defense / 2
    puts "#{brave.name} は #{damage_point} のダメージを受けた！"
    brave.hp -= damage_point.to_i
    if brave.hp <= 0
      brave.hp = 0
    end
  end
  
  def disp_hp
    puts "【#{@name}】HP: #{@hp}"
    puts "*=*=*=*=*=*=*=*=*=*=*"
  end
end
