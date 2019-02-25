require_relative 'data_reader'
require_relative 'utils_api'


# headers = DataReader.read_data("/auth", "payload")
# puts headers

# API_Utils.make_post_call("/booking")

path = "../../../config/data/erb_data.xml.erb"
erb_temp = DataReader.read_erb(path)
puts erb_temp
puts  DataReader.replace_value(erb_temp, "Dmitriy")

