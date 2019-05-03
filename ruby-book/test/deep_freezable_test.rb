require 'minitest/autorun'
require './lib/deep_freezable'
require './lib/bank'
require './lib/team'

class DeepFreezableTest < Minitest::Test
  def test_deep_freeze_to_array
    assert_equal ['Japan', 'US', 'India'], Team::COUNTRIES
    # array is frozen
    assert Team::COUNTRIES.frozen?
    # array all item frozen
    assert Team::COUNTRIES.all? { |country| country.frozen?}
  end
  def test_deep_freeze_to_hash
    assert_equal({'Japan' => 'yen','US' => 'dollar','India' => 'rupee' }, Bank::CURRENCIES)
    # array is frozen
    assert Bank::CURRENCIES.frozen?
    # array all item frozen
    assert Bank::CURRENCIES.all? { |k,v| k.frozen? && v.frozen?}
  end
end