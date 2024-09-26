Feature: Validate create resource

  Background:
    * def body = read("classpath://json//create_resource.json")

    Scenario: Verify create resource
      Given url host
      And path "/posts"
      And header Content-Type = "application/json"
      And header Accept = "application/json"
      And request body
      When method post
      Then status 201
      And print response