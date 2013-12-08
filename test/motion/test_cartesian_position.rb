require 'test_helper'

class TestCartesianPosition < Test::Unit::TestCase
  def test_to_s
    p = Motion::CartesianPosition.new(x:-1, p:-5)
    assert_equal %(X =    -1.000  mm,  Y =     0.000  mm,  Z =     0.000  mm,
W =     0.000 deg,  P =    -5.000 deg,  R =     0.000 deg), p.to_s
  end
end
