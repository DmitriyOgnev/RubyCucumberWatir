Feature: Basic API call

  Scenario: Make 200 Status Call
    Given the user is authorized to make a request
    When the user makes an API call to "/ping"
    Then the user receives 200 response status

  Scenario Outline: Make API Calls
    Given the user is authorized to make a request
    When the user makes an API call to "<webend>"
    Then the user receives <status> response status

    Examples:
      | webend     | status |
      | /ping      | 201    |
      | /booking/1 | 200    |

