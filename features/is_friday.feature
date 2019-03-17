Feature: Testing if the day is Friday
  @Basic_Methods
  Scenario Outline: Testing if the Day is Friday
    Given the day is "<day>"
    When the user ask it is Friday already
    Then the system replies "<response>"

    Examples:
    |day        | response   |
    |Friday     | TGIF       |
    |Sunday     | Nope       |
    |Wednesday  | Nope       |
