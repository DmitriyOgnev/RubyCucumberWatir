require 'data_magic'
require 'page-object'
require 'require_all'
require 'rspec'
require_all 'lib'

World(PageObject::PageFactory)

World(DataMagic)