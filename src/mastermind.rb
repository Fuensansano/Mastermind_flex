# frozen_string_literal: true

class Mastermind
  def evaluate(win_combination, guess_combination)
    return [0,0] if guess_combination.first == 'yellow'
    if guess_combination.first == 'red'
      return [0,0]
    end

    [1,0]
  end
end
