Feature: Sign up on Petnanny
  
  As a user 
  So that I can take advantage of all features of site
  I would want to create a profile by signing up 
  
  Background: Petnanny home page
   When I am on Petnanny welcome page
   When I go to "Sign Up"
   Then I should be on the Sign Up page

  Scenario: create new account
   When I am on the Sign Up page
   And  I fill in "Name" with "dhilip"
   And  I fill in "Email" with "dsivara1@binghamton.edu"
   And  I fill in "Password" with "dhi"
   And I press "Submit"
   # Sign up successful
   Then I should see "User was successfully created"