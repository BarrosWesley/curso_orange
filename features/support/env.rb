require 'selenium-webdriver'
require 'capybara'
require 'capybara/cucumber'
require 'capybara/poltergeist'
require 'site_prism'
require 'logger'
require 'faker'



Capybara.configure do |c|
   # c.default_driver = :selenium
     c.default_driver = Selenium::WebDriver.for :chrome
    #driver = Selenium::WebDriver.for :firefox
    

Capybara.default_max_wait_time = 20


    
end







