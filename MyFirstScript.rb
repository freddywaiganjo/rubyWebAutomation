
require 'watir'
require 'selenium-webdriver'

#caps = Selenium::WebDriver::Remote::Capabilities.firefox(firefox_options => {detach: true})
#Selenium::WebDriver::Firefox.driver_path = 'C:/geckodrive.exe' #declare driver path here if its not set in environment variable
browser = Watir::Browser.new :firefox
#browser = Watir::Browser.new :firefox, :desired_capabilities: caps
browser.window.maximize
#browser.goto 'www.google.com'
browser.goto 'https://www.facebook.com'
#browser.back
#browser.forward
#browser.refresh
#puts browser.text  #get all texts in a page
puts browser.url #prints current url opened
puts browser.title
#browser.text_field(:class_name, 'inputtext login_form_input_box').set 'alex@gmail.com'
#browser.text_field(:id, 'email').set 'alex1@gmail.com'
#browser.link(:visible_text, 'Forgotten account?').click #using link text i.e visible text
#browser.link(:text, 'Forgotten account?').click  #for text use,link
#browser.element(:link_text, 'Forgotten account?').click #for link_text, use element
#browser.element(:partial_link_text, 'Forgotten').click #for partial link_text,where some text is dynamic
browser.text_field(:xpath, '//input[@name="email"]').set 'email@xpath.com' #find byxpath
browser.text_field(:id, 'email').clear
browser.text_field(:id, 'email').set 'alex@gmail.com'
#browser.text_field(:xpath, '//input[@name="email" or @id="email"]').set 'email@xpath.com' #find byxpath with multiple attributes
#browser.text_field(:xpath, '//input[@name="email" and @id="email"]').set 'email@xpath.com' #find byxpath with multiple attributes

browser.text_field(:id, 'pass').set '12345678'
browser.text_field(:id, 'pass').clear
browser.text_field(:id, 'pass').set '123456'
#for button use .button
#browser.label(:id, 'loginbutton').click

#click on links
#browser.link(:id, 'putidhere').click

#radio but use set not click
#browser.radio(:id, 'u_0_9').set

#select from dropdown  using visible text
browser.select(:id, 'year').select '2010'

#using keyboard operations
browser.text_field(:name, 'email').set 'alexxx@gmail'
browser.send_keys :tab
browser.send_keys'mypassword'
browser.send_keys :enter
browser.close