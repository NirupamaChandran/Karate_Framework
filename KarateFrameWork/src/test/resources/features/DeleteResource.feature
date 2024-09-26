Feature: Validate delete resource

  Scenario: Verify delete resource
    Given url host
    And path "/posts/1"
    When method delete
    Then status 200
    And print response