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
      %(X = #{("%0.03f" % x.round(3)).rjust(9)}  mm,  Y = #{("%0.03f" % y.round(3)).rjust(9)}  mm,  Z = #{("%0.03f" % z.round(3)).rjust(9)}  mm,
W = #{("%0.03f" % w.round(3)).rjust(9)} deg,  P = #{("%0.03f" % p.round(3)).rjust(9)} deg,  R = #{("%0.03f" % r.round(3)).rjust(9)} deg)
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
