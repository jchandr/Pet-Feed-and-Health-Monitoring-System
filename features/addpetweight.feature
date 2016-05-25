Feature: Add pet weight
    As a owner
    I want to see the activity details
    So that I can maintain pet health

Background:
    Given I have pet weight to add 
    
Scenario: Adding pet weight manually
    Then page should have text "New Petinfo"
    
Scenario: Add Records
    When I am on the New petinfo page 
    And I go to "Pet weight"
    Then I should be able to enter the values
    
Scenario: create record
    When I press create record
    Then I should be able to add pet weight
    
Scenario: go back
    When I press back
    Then I should be on the Petinfo page