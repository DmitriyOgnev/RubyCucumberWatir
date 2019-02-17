

PATH_TO_ROOT = File.absolute_path('../..', File.dirname(__FILE__))

Before do
  @browser = Watir::Browser.new :chrome
end

After do
  @browser.close
end