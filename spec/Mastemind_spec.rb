require_relative 'spec_helper'
require_relative '../src/mastermind'

describe Mastermind do
  let(:mastermind) { Mastermind.new }

  it 'should return [1,0] when guesser guess the combination' do
    guess_combination = ['blue']
    win_combination = ['blue']

    expect(mastermind.evaluate(win_combination, guess_combination)).to eq([1,0])
  end

  it 'should return [0,0] when guesser dosnt guess the combination' do
    guess_combination = ['red']
    win_combination = ['blue']

    expect(mastermind.evaluate(win_combination, guess_combination)).to eq([0,0])
  end

  it 'should return [0,0] when guesser combination is yellow and win combination is blue' do
    guess_combination = ['yellow']
    win_combination = ['blue']

    expect(mastermind.evaluate(win_combination, guess_combination)).to eq([0,0])
  end
end
