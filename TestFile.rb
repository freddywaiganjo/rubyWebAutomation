require 'test/unit'

class TestLoginPage < Test::Unit::TestCase
  def test_invalid_username  #testcase methods must ALWAYS start wwith name test
    puts 'Testcase: Invalid login'
    x = 10
    assert_equal(x, 'alexxi', "########Assert failed:: #{x}") #this will fail and show message
  end

  def test_valid_username_invalid_password
    puts 'Login with valid username and invalid password'
    assert_true(true, 'Assert failed') #this will pass
  end

  #setup method runs first before every testcase is executed
  def setup
    puts 'lets open browser here first'
  end

  #runs after every test case method
  def teardown
    puts 'lets close browser here'
  end
end
