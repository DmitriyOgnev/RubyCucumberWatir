require 'json'
require 'rest-client'

Given("the user is authorized to make a request") do
  @url="https://restful-booker.herokuapp.com"
end

When("the user makes an API call to {string}") do |string|
  @response = RestClient.get(@url+string)
end

Then("the user receives {int} response status") do |int|
  puts @response.code
end
