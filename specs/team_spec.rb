require('minitest/autorun')
require('minitest/rg')
require_relative('../team')

class TestTeam < MiniTest::Test

  def setup
    @team_1 = Team.new("SuperSquad", "Thomas", "Mark", "John")
  end

  def test_check_team_name
    assert_equal("SuperSquad", @team_1.team_name)
  end

  def test_check_players
    assert_equal(["Thomas", "Mark"], @team_1.players)
  end

  def test_check_coach
    assert_equal("John", @team_1.coach)
  end

  def test_update_coach
    new_coach_name = @team_1.update_coach("Ben")
    assert_equal("Ben", new_coach_name)
  end

  def test_add_player
    new_player = @team_1.add_player("Jack")
    assert_equal(["Thomas", "Mark", "Jack"], new_player)
  end

  def test_player_in_team
    team_player = @team_1.player_in_team("Mark")
    assert_equal(true, team_player)
  end

  def test_points
    assert_equal(0, @team_1.points)
  end

  def test_win_or_lose_points
    win_or_lose = @team_1.win_or_lose_points("win")
    assert_equal(1, win_or_lose)
  end


end
