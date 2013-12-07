require 'test_helper'

class TestMotion < Test::Unit::TestCase
  def test_lerp
    assert_equal 0.0, Motion.lerp(0,1,0)
    assert_equal 1.0, Motion.lerp(0,1,1)
    assert_equal 5.5, Motion.lerp(0,10,0.55)
  end

  def test_position_lerp
    start_position = Motion::CartesianPosition.new
    end_position = Motion::CartesianPosition.new(
      x: 10.0,
      y: 20.0,
      z: 30.0,
      w: 40.0,
      p: 50.0,
      r: 60.0
    )

    lerped_position = Motion.cposition_lerp(start_position, end_position, 0.5)
    assert_equal 5.0, lerped_position.x
    assert_equal 10.0, lerped_position.y
    assert_equal 15.0, lerped_position.z
    assert_equal 20.0, lerped_position.w
    assert_equal 25.0, lerped_position.p
    assert_equal 30.0, lerped_position.r
  end

  def test_sq
    assert_equal 4.0, Motion.sq(2)
    assert_equal 1.0, Motion.sq(-1)
  end

  def test_distance
    s = Motion::CartesianPosition.new
    e = Motion::CartesianPosition.new(
      x: 10.0,
      y: 10.0,
      z: 10.0
    )

    assert_equal 17.321, Motion.distance(s,e).round(3)
  end

  def test_radians
    assert_equal Math::PI, Motion.radians(180)
    assert_equal 0.0, Motion.radians(0)
  end
end
