Given(/^I am on the History page$/) do
  visit '/petinfos'
end

Then(/^page should have text "([^"]*)"$/) do |arg1|
  text = "Listing Petinfos"
  arg1 == text
end

Then(/^I should see all activities$/) do
  visit '/petinfos'
end

Then(/^I should see history page with edit values$/) do
  visit '/petinfos'
end

When(/^I press Logout$/) do
end

Then(/^I should be on the Petnanny welcome page$/) do
  visit '/'
end