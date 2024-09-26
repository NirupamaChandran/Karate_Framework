Feature: Get employees

  Scenario: Verify user can get list of employees
    Given url host
    And path "/employees"
    When method get
    Then status 200
    And print response


  Scenario: Verify user can get employee by id
    Given url host
    And path "/employee/1"
    When method get
    Then status 200
    And print response