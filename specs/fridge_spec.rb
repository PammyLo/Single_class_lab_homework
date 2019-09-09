require('minitest/autorun')
require('minitest/rg')
require_relative('../fridge')

class TestFridge < MiniTest::Test

def setup
  @pam_fridge = Fridge.new('green', 120, 0, "fridge_freezer")
end

def test_has_colour
assert_equal("green", @pam_fridge.colour)
end

def test_change_temp
  temp = @pam_fridge.change_temp(5)
assert_equal(5, temp)
end

end
