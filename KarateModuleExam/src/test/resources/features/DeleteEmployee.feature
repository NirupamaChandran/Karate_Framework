Feature: Delete employee

  Scenario: Verify user can get list of employees
    Given url host
    And path "/delete/1"
    When method delete
    Then status 200
    And print response