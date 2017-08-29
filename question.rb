
module MathGame
  class Question
    attr_accessor :name
    def initialize (name)
      @name = name
    end
    def q
      r1 = rand(1...20)
      r2 = rand(1...20)
      puts "#{@name.name}> #{r1} + #{r2}?"
      guess = gets.chomp.to_i
      if guess == r1 + r2
        puts "Good job. That's correct"
      else
        @name.life = @name.life - 1
        puts "#{@name.name}'s life = #{@name.life}"
        puts "Not correct. Answer is #{r1 + r2}"
      end
    end
  end
end
