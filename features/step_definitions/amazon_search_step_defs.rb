require 'watir'
require 'cucumber'
require 'rspec'
require 'page-object'



Given(/^a user goes to Amazon$/) do

  # @browser.goto"http://www.amazon.com"

  visit(AmazonHome)


end

When(/^they search for "([^"]*)"$/) do |arg|
  # on(Amazon_home_page).order(arg)
  @browser.text_field(:id => "twotabsearchtextbox").set"#{arg}"
  @browser.send_keys :return
end

Then(/^amazon should return results for "([^"]*)"$/) do |arg|


end