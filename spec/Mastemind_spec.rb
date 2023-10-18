require_relative 'spec_helper'
require_relative '../src/mastermind'

describe Mastermind do
  let(:mastermind) { Mastermind.new }

  it 'given a right guess combination should return [1,0] ' do
    guess_combination = ['blue']
    win_combination = ['blue']

    expect(mastermind.evaluate(win_combination, guess_combination)).to eq([1,0])
  end

  it 'given a wrong guess combination should return [0,0]' do
    guess_combination = ['red']
    win_combination = ['blue']

    expect(mastermind.evaluate(win_combination, guess_combination)).to eq([0,0])
  end

  it 'given a two color rigth combination should return [2,0]' do
    guess_combination = ['red', 'blue']
    win_combination = ['red', 'blue']

    expect(mastermind.evaluate(win_combination, guess_combination)).to eq([2,0])
  end
end
