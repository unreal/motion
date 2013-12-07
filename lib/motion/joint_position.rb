module Motion
  class JointPosition
    attr_reader :axes
    def initialize(number_of_axes)
      @axes = Array.new(number_of_axes, 0.0)
    end

    def set_axis(axis_id, value)
      @axes[axis_id-1] = value.to_f
    end

    def axis(axis_id)
      @axes[axis_id-1]
    end

    def self.copy(original)
      new(original.axes.length)
    end
  end
end
