module MathGame
  class Turn
    attr_accessor :tn, :current
    def initialize (tn)
      @tn = tn
      @current = ""
    end
    def change
      @tn = @tn * (- 1)
    end
  end
end