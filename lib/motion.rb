require "motion/position"
require "motion/version"

module Motion
  DEG_TO_RAD = Math::PI / 180.0

  class << self
    # Linear interpolates between two numbers at a specific increment
    def lerp(start, stop, amount)
      start.to_f + (stop.to_f-start.to_f) * amount.to_f
    end

    # Linear interpolate between two positions at a specific increment
    def position_lerp(start_position, end_position, amount)
      p = Position.copy(start_position)
      p.x = lerp(start_position.x, end_position.x, amount)
      p.y = lerp(start_position.y, end_position.y, amount)
      p.z = lerp(start_position.z, end_position.z, amount)
      p.w = lerp(start_position.w, end_position.w, amount)
      p.p = lerp(start_position.p, end_position.p, amount)
      p.r = lerp(start_position.r, end_position.r, amount)
      p
    end

    # Multiplies a number by itself
    def sq(n)
      n.to_f*n
    end

    # Distance between two positions
    def distance(s, e)
      Math.sqrt(sq(e.x - s.x) + sq(e.y - s.y) + sq(e.z - s.z))
    end

    # converts a number from degrees to radians
    def radians(deg)
      deg * DEG_TO_RAD
    end
  end
end
