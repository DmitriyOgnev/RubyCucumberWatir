module FridayHelper
  def isFriday?(day)
    "Nope"
  end
end

World FridayHelper

Given("the day is Sunday") do
  @today = "Sunday"
end

When("the user ask it is Friday already") do
  @actual = isFriday?(@today)
end

Then("the system replies {string}") do |string|
  expect(@actual).to eq(string)
end
