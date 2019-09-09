class Student

  attr_accessor :name, :cohort, :fav_language

  def initialize(name, cohort, fav_language)
    @name = name
    @cohort = cohort
    @fav_language = fav_language
  end

  def change_name(new_name)
    @name = new_name
    return @name
  end

  def change_cohort(new_cohort)
    @cohort = new_cohort
    return @cohort
  end

  def talk
    return "I can talk!"
  end

  def say_favourite_language
    return "I love " + @fav_language
  end


end
