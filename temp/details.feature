Feature: View details of a pet

As a Owner
I want to view details of the pet
So that I can view pet weight, date, food amount, water etc.

Background:  Petinfos have been added to the database
  
  Given the following petinfos exist:
  | id        | updated_at            
  | 9         | 2016-05-22 22:11:35 UTC  

Scenario: Edit details of an activity
  When I am on the edit page for "9"
  Then I should be on the Edit Petinfo Listings page
  
Scenario: Back to petinfo listings page
  When I am on the edit page for "9"
  Then I should be on the Petinfo Listings page
