Feature: Validate get resources

  Scenario: Verify get resources
    Given url host
    And path "/posts"
    When method get
    Then status 200
    And print response
