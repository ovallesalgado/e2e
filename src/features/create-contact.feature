Feature: As a user I expect to be able to create contacts

  @dev
  Scenario: As a user I expect to be able to create a new contact
    Given I am on the "home" page
    And I click the "create" button
    Then  I am directed to the "create contact" page
    And the "create contact header" should contain the text "Create Contact"
    And I fill in the "name" input with "jhon"
    And I select the "Male" option from the "gender"
    And I fill in the "phone" input with "000000000"
    And I fill in the "street" input with "123 Test"
    And I fill in the "city" input with "test"
    And I click the "save" button
    
    And I am directed to the "home" page
    And I fill in the "search" input with "jhon"
    And the "full name label" should contain the text "Name:"
    And the "name" should contain the text "jhon"
    And the "gender label" should contain the text "Gender:"
    And the "gender" should contain the text "Male"
    And the "address label" should contain the text "Address:"
    And the "address" should contain the text "123 Test"
    And the "edit" should be displayed
    And the "delete" should be displayed