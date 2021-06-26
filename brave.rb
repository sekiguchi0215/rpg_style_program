require './character.rb'

class Brave < Character
  
  def attack(monster)
    puts "#{@name} の攻撃！"
    damage_point = @offense - monster.defense / 2
    puts "#{monster.name} に #{damage_point} のダメージ！"
    monster.hp -= damage_point.to_i
    if monster.hp <= 0
      monster.hp = 0
    end
  end

  def disp_hp
    puts "*=*=*=*=*=*=*=*=*=*=*"
    puts "【#{@name}】HP: #{@hp}"
  end

  def judge_result(monster)
    if @hp <= 0
      puts "#{@name} はしんでしまった！"
    else
      puts "#{monster.name} をやっつけた！"
    end
  end
end