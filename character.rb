class Character
  attr_reader :name, :hp, :offense, :defense
  attr_writer :hp

  def initialize(name:, hp:, offense:, defense:)
    @name = name
    @hp = hp
    @offense = offense
    @defense = defense
  end
end
