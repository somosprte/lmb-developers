require 'minitest/autorun'
require 'lmb/developers'

class LmbDevelopersTest < Minitest::Test
  def test_login
    config = Lmb::Developers::Configuration
    config.configure('PROD', 'eoxcVbxdzNdzZUqdTRNnAnuA397IKhVt')
    assert_equal "hello world",
    Lmb::Developers::Auth.login("test", "teste")
  end
end