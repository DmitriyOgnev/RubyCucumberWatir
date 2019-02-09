module FridayHelper
  def isFriday?(day)
    if day=='Friday'
      'TGIF'
    else
      "Nope"
    end
  end
end

World FridayHelper

Given("the day is {string}") do |day|
  @today = day
end

Given("the day is Friday") do
  @today = "Friday"
end

When("the user ask it is Friday already") do
  @actual = isFriday?(@today)
end

Then("the system replies {string}") do |string|
  expect(@actual).to eq(string)
end
