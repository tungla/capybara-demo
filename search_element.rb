require 'capybara/dsl'
require 'capybara'

include Capybara::DSL

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.current_driver = :chrome

#Default max wait time
Capybara.default_max_wait_time = 20

# Navigate
visit('https://tiki.vn')

# Search element
find(:css, "input[name='q']")