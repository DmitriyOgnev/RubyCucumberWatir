Feature: Basic API call

  Scenario: Make 200 Status GET Call
    Given the user is authorized to make a request
    When the user makes a GET API call to "/ping"
    Then the user receives 200 response status

  Scenario Outline: Make API GET Calls
    Given the user is authorized to make a request
    When the user makes a GET API call to "<webend>"
    Then the user receives <status> response status

    Examples:
      | webend     | status |
      | /ping      | 201    |
      | /booking/1 | 200    |

  Scenario: Make 200 Status POST Call
    Given the user is authorized to make a request
    When the user makes a POST API call to "/booking"
    Then the user receives 200 response status


