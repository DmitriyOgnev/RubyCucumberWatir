class AmazonHome
  # require 'page-object'
  include PageObject

  page_url "http://www.amazon.com"

  text_field(:search_box, id: 'twotabsearchtextbox')
  select_list(:dept_dropdown, id: 'searchDropdownBox')
  button(:search_button, xpath: "//div[@class='nav-right']//input[@class='nav-input']")

end

