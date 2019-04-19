require 'minitest/autorun'
require './lib/convert_hash_syntax.rb'

class ConvertHashSyntaxTest < Minitest::Test
  def test_convert_hash_syntax
    old_syntax = <<~TEXT
      {
        :name => 'Alice',
        :age =>20,
        :genger => :female
      }
    TEXT
    expected = <<~TEXT
      {
        name: 'Alice',
        age: 20,
        genger: :female
      }
    TEXT
    assert_equal expected, convert_hash_syntax(old_syntax)
  end

end