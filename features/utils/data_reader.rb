require 'data_magic'

module DataReader

  def DataReader.read_data(path, data)
    # DataMagic.yml_directory = 'config/data'
    file_cont = DataMagic.load('default.yml')
    file_cont[path.gsub("/", "")][data]
  end

end

