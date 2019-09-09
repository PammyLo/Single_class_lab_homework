require('minitest/autorun')
require('minitest/rg')
require_relative('../student')

class TestStudent < MiniTest::Test

  def setup
    @student_1 = Student.new("Mickey", "INV1", "Ruby")
  end

  def test_get_name
    assert_equal("Mickey", @student_1.name)
  end

  def test_get_cohort
    assert_equal("INV1", @student_1.cohort)
  end

  def test_change_name
    new_name = @student_1.change_name("Robert")
    assert_equal("Robert", new_name)
  end

  def test_change_cohort
    new_cohort = @student_1.change_cohort("INV2")
    assert_equal("INV2", new_cohort)
  end

  def test_has_talk
    assert_equal("I can talk!", @student_1.talk)
  end

  def test_say_favourite_language
    assert_equal("I love Ruby", @student_1.say_favourite_language)
  end

end
