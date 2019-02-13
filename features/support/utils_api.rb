require 'json'
require 'rest-client'

module API_Utils

@URL = ''
@response = ''

  def API_Utils.set_URL(url)
    @URL = url
  end

  def API_Utils.make_get_call(webend)
    @response = RestClient.get(@URL+webend)
  end

end