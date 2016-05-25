Feature: Add water volume
    As a owner
    I want to see the activity details
    So that I can maintain pet health

Background:
    Given I have water volume to add 
    
Scenario: Adding water volume manually
    Then page should have text "New Petinfo"
    
Scenario: Add Records
    When I am on the New petinfo page 
    And I go to "water volume"
    Then I should be able to enter the values
    
Scenario: create record
    When I press create record
    Then I should be able to add water volume
    
Scenario: go back
    When I press back
    Then I should be on the Petinfo page