require 'minitest/autorun'
require 'lmb-developers'

class LmbDevelopersTest < Minitest::Test
  def test_hello
    assert_equal "Hello world!",
    LmbDevelopers.hello
  end
end