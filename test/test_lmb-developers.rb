require 'minitest/autorun'
require 'lmb/developers'

class LmbDevelopersTest < Minitest::Test
  def test_wrong_data_login
    Lmb::Developers.configure('DEV', 'wrong_api_key')
    assert_equal Lmb::Developers::Error,
    Lmb::Developers::Auth.login("wrong_username", "wrong_password").class,
    'Trying login with wrong data.'
  end
end