require 'watir'
require 'selenium-webdriver'
require 'test/unit'

class LoginPage <Test::Unit::TestCase
  def setup
    #capabs = Selenium::WebDriver::Remote::Capabilities.chrome(:chrome_opts => (detach:true ))
    #Selenium::WebDriver::Chrome.driver_path='C://chromedrive.exe'
    #@browser = Watir::Browser.new :chrome_opts, :desired_capabilities:capabs
    @browser = Watir::Browser.new :firefox
    @browser.window.maximize
    @browser.goto'https://www.facebook.com'
  end

  def teardown
    @browser.close
  end

  def test_valid_credentials
    begin
    @browser.text_field(:name, 'email').set 'alexx@gmail.com'
    @browser.text_field(:name, 'pass').set 'mypass'
    @browser.label(:id, 'loginbutton').click
    textRest = 'Forgotten password?'
    textFound= @browser.link(:data_test, 'Forgotten password?').inner_text
    assert_equal(textFound, textRest, 'Match failed')
    rescue UnknownObjectException => ex
      puts "exception::: #{ex}"
      end
  end
end
