# frozen_string_literal: true

class Mastermind
  def evaluate(win_combination, guess_combination)
    return [0,0] if guess_combination.first != win_combination.first

    [1,0]
  end
end
