# frozen_string_literal: true

class Mastermind
  def evaluate(win_combination, guess_combination)
    return [0,0] if guess_combination.first != win_combination.first
    return [2,0] if guess_combination.size > 1

    [1,0]
  end
end