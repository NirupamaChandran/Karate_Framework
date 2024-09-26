Feature: Validate update resources

  Background:
    * def body = read("classpath:/json/update_resource.json")

    Scenario: Verify update resource
      Given url host
      And path "/posts/1"
      And header Content-Type = "application/json"
      And header Accept = "application/json"
      And request body
      When method put
      Then status 200
      And print response