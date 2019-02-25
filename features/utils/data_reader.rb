require 'data_magic'
require 'erb'

module DataReader

  def DataReader.read_data(path, data)
    DataMagic.yml_directory = 'config/data'
    file_cont = DataMagic.load('default.yml')
    file_cont[path.gsub("/", "")][data]
  end

  def DataReader.read_erb(path)
    template_erb_file = File.expand_path(path, "__FILE\__")
    template_erb_string = File.read(template_erb_file)
  end

  def DataReader.replace_value(temp_erb, assigned_value)
    @firstname = assigned_value
    erb = ERB.new(temp_erb)
    erb.result(binding)
  end
end

