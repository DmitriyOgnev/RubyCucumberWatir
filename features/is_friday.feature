Feature: Testing if the day is Friday
  Scenario: Testing if the Day is Friday
    Given the day is Sunday
    When the user ask it is Friday already
    Then the system replies "Nope"