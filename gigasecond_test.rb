require 'minitest/autorun'
require 'date'
require 'time'
require_relative 'gigasecond'

class GigasecondTest < MiniTest::Unit::TestCase

#given Samantha's birthday is Apr 25, 2011, how old will she be on her 1 gs anniversary?
  def test_1
    gs = Gigasecond.from(Date.new(2011, 4, 25))
    assert_equal Date.new(2043, 1, 1), gs
  end

  def test_2
    gs = Gigasecond.from(Date.new(1977, 6, 13))
    assert_equal Date.new(2009, 2, 19), gs
  end

  def test_3
    gs = Gigasecond.from(Date.new(1959, 7, 19))
    assert_equal Date.new(1991, 3, 27), gs
  end

  def test_yourself
    daves_birthday = Date.new(1980, 10, 30)
    gs = Gigasecond.from(Date.new(1980, 10, 30))
    assert_equal Date.new(2012, 7, 8), gs
  end

end
