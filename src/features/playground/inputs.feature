Feature: As a user I can interact with different types of inputs

  @smoke
  @regression
  Scenario: As a user I can interact and assert on autocomplete inputs
    Given I am on the "home" page
    And I click the "playground" button
    When I am directed to the "playground" page
    And I fill in the "movies" input with "The G"
    And I click the "The Godfather" link
    And the "movies" should contain the value "The Godfather"
    And the "movies" should not contain the value "The Godfather: Part II"

  @smoke
  @regression
  Scenario: As a user I can interact and assert on various inputs
    Given I am on the "home" page
    And I click the "playground" button
    When I am directed to the "playground" page
    And the "outlined required" should equal the value "Testing"
    And the "outlined disabled" should equal the value "Talks"
    And the "outlined read only" should equal the value "Hub"
    And the "outlined required" should be enabled
    And the "outlined disabled" should not be enabled
    And I fill in the "outlined required" input with "Testing Talks Online"
    And the "outlined required" should equal the value "Testing Talks Online"

  @smoke
  @regression
  Scenario: As a user I can interact and assert on input validation
    Given I am on the "home" page
    And I click the "playground" button
    When I am directed to the "playground" page
    And the "validation label" should contain the text "Error"
    And the "validation label" should not contain the text "Errors"
    And the "validation error" should contain the text "Incorrect entry."