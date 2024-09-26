Feature: Update employee

  Background:
    * def body = read("classpath://json//update_employee.json")

  Scenario: Verify user can create employee
    Given url host
    And path "/update/1"
    And header Content-Type = "application/json"
    And header Accept = "application/json"
    And request body
    When method put
    Then status 200
    And print response