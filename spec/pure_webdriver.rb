require "selenium-webdriver"
driver = Selenium::WebDriver.for :chrome
driver.navigate.to "http://google.com"
element = driver.find_element(:name, 'q')
element.send_keys "Hello WebDriver!"
element.submit

if driver.title == 'Google'
  puts 'SUCCESS'
else
  puts 'FAILURE'
end

driver.quit