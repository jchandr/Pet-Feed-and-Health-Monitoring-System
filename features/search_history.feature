Feature: History
    As a owner
    I want to see the activity details
    So that I can maintain pet health

Background:
    Given I am on the History page 
    
Scenario: History page content
    Then page should have text "Listing Petinfos"
    
Scenario: Records
    Then I should see all activities
    
Scenario: edit food
    When I am on the History page
    And I go to "Edit"
    Then I should see history page
    And I can see the pet weight text box
    
Scenario: edit food
    When I am on the History page
    And I go to "Edit"
    Then I should see history page
    And I can see the Food weight text box

Scenario: edit food
    When I am on the History page
    And I go to "Edit"
    Then I should see history page
    And I can see the water volume text box