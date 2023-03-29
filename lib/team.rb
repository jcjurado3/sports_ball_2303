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

  def long_term_players
    roster.select do |player|
      player.contract_length > 24
    end
  end

  def short_term_players
    roster.select do |player|
      player.contract_length <= 24
    end
  end

  def total_value
    roster.sum {|player| 
      player.total_cost}
  end


  def details
    details_array = {
    "total_value" => total_value,
    "player_count" => player_count
    }
  end
end 