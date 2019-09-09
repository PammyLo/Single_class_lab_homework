class Team

  attr_accessor :team_name, :players, :coach, :points

  def initialize(team_name, player_1, player_2, coach)
    @team_name = team_name
    @players = player_1, player_2
    @coach = coach
    @points = 0
  end

  def update_coach(new_coach_name)
    @coach = new_coach_name
    return @coach
  end

  def add_player(new_player)
    @players.push new_player
    return @players
  end

  def player_in_team(player)
    if @players.include? player
      return true
    end
  end

  def win_or_lose_points(outcome)
    if outcome == "win"
      @points +=1
    end
    return @points
  end


end
