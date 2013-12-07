module Motion
  class CartesianPosition

    attr_accessor :x,:y,:z,:w,:p,:r

    def initialize(options={})
      [:x,:y,:z,:w,:p,:r].each do |component|
        options[component] ||= 0.0
      end

      @x = options[:x]
      @y = options[:y]
      @z = options[:z]
      @w = options[:w]
      @p = options[:p]
      @r = options[:r]
    end

    def to_s
      %(X: #{x} Y: #{y} Z: #{z}
W: #{w} P: #{p} R: #{r})
    end

    def self.copy(original)
      new(
        x: original.x,
        y: original.y,
        z: original.z,
        w: original.w,
        p: original.p,
        r: original.r
      )
    end
  end
end
