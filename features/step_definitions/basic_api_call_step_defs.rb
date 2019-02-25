require_relative '../utils/utils_api'
require 'rspec'

Given("the user is authorized to make a request") do
  API_Utils.set_URL("https://restful-booker.herokuapp.com")
end

When("the user makes a GET API call to {string}") do |string|
  @response = API_Utils.make_get_call(string)
end

Then("the user receives {int} response status") do |int|
  expect(@response.code).to eq(int)
end

When("the user makes a POST API call to {string}") do |string|
  @response = API_Utils.make_post_call(string)
end
