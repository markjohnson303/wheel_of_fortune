class WheelOfFortune
  attr_reader :theme, :guesses

  def initialize(start)
    @theme = start[:theme]
    @phrase = start[:phrase]
    @guesses = []
  end

  def to_s
    nil
  end

  def can_i_have?(input)
    guess = :input.to_s
    @phrase.include? guess
  end


  def game_over?
    nil
  end
end


# Checks to see if we executed this file from the command-line
# e.g. `ruby simple_jepordy.rb`
if __FILE__ == $0

  # DRIVER CODE
  j = WheelOfFortune.new( {theme: "card games", phrase: "Go fish"} )
  j.can_i_have?("g")
  j.can_i_have?("o")
  p j
  puts j # calls j.to_s

end
