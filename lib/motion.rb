require "motion/position"
require "motion/version"

module Motion
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
  end
end
