require File.join(File.absolute_path(File.dirname(__FILE__)), 'page_object.rb')

search_page = GoogleSearch.new('Hello WebDriver!')
if search_page.title == 'Google'
  puts 'SUCCESS'
else
  puts 'FAILURE'
end
search_page.exit