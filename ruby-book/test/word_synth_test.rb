require 'minitest/autorun'
require './lib/word_synth'
require './lib/effects'

class WordSynrhTest < Minitest::Test
  def test_play
    effect = Effects.echo(2)
    assert_equal 'RRuubbyy iiss ffuunn!!', effect.call('Ruby is fun!')
  end
end