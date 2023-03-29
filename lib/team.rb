class Team
  attr_reader :roster

  def initialize(team_name, city)
    @roster = []
  end

  def player_count 

    @roster.count
  end

  def add_player(added_player)

    @roster << added_player

  end
end 