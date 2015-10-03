
require 'test_helper'

class CrypterTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Crypter::VERSION
  end

  def test_greeter
    assert_equal "wel-come", Crypter.greet
  end
end
