Feature: login to Petnanny
 
 As a user
 So that I can access the features of the Petnanny
 I want to login in Petnanny

Background: users have been added to database
  
  Given the following users exist:
  | name           | email                   | password|
  | dhilip         | dsivara1@binghamton.edu | dhi     |

  And I am on the Petnanny welcome page
  When I go to "login"
  Then I should be on the Login page

Scenario: login with valid credentials
  When I fill in "Email" with "dsivara1@binghamton.edu"
  When I fill in "Password" with "dhi"
  And I press "Submit"
  # Then login should be successful
  Then I should see "Login Successful"

Scenario: login with invalid credentials
  When I fill in "Email" with "abc@xyz.com"
  When I fill in "Password" with "12345"
  And I press "Submit"
  # Then login should be unsuccessful
  Then I should see "Invalid Username/Password"

Scenario: login with blank credentials
  When I fill in "Email" with ""
  When I fill in "Password" with ""
  And I press "Submit"
  # Then login should be unsuccessful
  Then I should be on the Login page
  
