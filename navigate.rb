require 'capybara/dsl'
require 'capybara'

include Capybara::DSL

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.current_driver = :chrome

# Navigate
visit('https://tiki.vn')