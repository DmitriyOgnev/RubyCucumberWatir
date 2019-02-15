require 'json'
require 'rest-client'
require_relative 'data_reader'

module API_Utils

  @URL = ''
  @response = ''

  def API_Utils.set_URL(url)
    @URL = url
  end

  def API_Utils.make_get_call(webend)
    @response = RestClient.get(@URL + webend)
  end

  # def API_Utils.make_post_call(webend)
  #   headers = {"Content-type" => "application/json"}
  #   payload = {"username" => "admin", "password" => "password123"}
  #   @response = RestClient.post(@URL + webend, payload, headers)
  # end

  def API_Utils.make_post_call(webend)
    headers = JSON.parse DataReader.read_data(webend, "headers")
    payload = JSON.parse DataReader.read_data(webend, "payload")

    @response = RestClient.post(@URL + webend, payload, headers)
  end
end