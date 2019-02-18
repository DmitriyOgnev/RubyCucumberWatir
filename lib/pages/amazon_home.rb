class AmazonHome
  # require 'page-object'
  include PageObject

  page_url "http://www.amazon.com"

  text_field(:search_box, id: 'twotabsearchtextbox')
  select_list(:dept_dropdown, id: 'searchDropdownBox')
  button(:search_button, xpath: "//div[@class='nav-right']//input[@class='nav-input']")
  div(:search_results, class: 's-result-list sg-row')

  def search_for_item(item)
    self.search_box = item
    self.search_button
  end


  def click_dynamic_button(var_xpath)
    browser.button(:xpath => var_xpath).click
  end


end

