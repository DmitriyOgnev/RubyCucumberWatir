require 'watir'
require 'cucumber'
require 'rspec'
require 'page-object'


Given(/^a user goes to Amazon$/) do
  # @browser.goto"http://www.amazon.com"
  visit(AmazonHome)
end

When(/^they search for "([^"]*)"$/) do |arg|
  # @browser.text_field(:id => "twotabsearchtextbox").set"#{arg}"
  # @browser.send_keys :return

  # search for an item using individual webelements
=begin
  on(AmazonHome) do |page|
    page.search_box = arg
    page.search_button
  end
=end

  #   search using one method defined in Page
  # on(AmazonHome).search_for_item(arg)

  on(AmazonHome) do |page|
    page.search_box = arg
    str = "//div[@class='nav-right']//input[@class='nav-input']"
    page.click_dynamic_button(str)
  end

end

Then(/^amazon should return results for "([^"]*)"$/) do |arg|
  expect(@browser.title).to include(arg)

end