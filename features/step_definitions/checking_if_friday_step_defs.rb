require_relative '../utils/friday_helper'

Given("the day is {string}") do |day|
  @today = day
end

Given("the day is Friday") do
  @today = "Friday"
end

When("the user ask it is Friday already") do
  @actual = FridayHelper.isFriday?(@today)
end

Then("the system replies {string}") do |string|
  expect(@actual).to eq(string)
end
