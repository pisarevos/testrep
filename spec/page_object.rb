require "selenium-webdriver"
class GoogleSearch
  def initialize(query = nil)
    driver.navigate.to "http://google.com"
    perform_serach(query) unless query.nil?
  end

  def driver
    @driver ||= Selenium::WebDriver.for :chrome
  end

  def perform_serach(query)
    element = driver.find_element(:name, 'q')
    element.send_keys query
    element.submit
  end

  def title
    driver.title
  end

  def exit
    driver.quit
  end
end


