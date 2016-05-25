Given(/^I have pet weight to add$/) do
end

When(/^I am on the New petinfo page$/) do
  visit'/petinfos/new'
end

Then(/^I should be able to enter the values$/) do
  visit'/petinfos/new'
end

When(/^I press create record$/) do
  visit'/petinfos/new'
end

Then(/^I should be able to add pet weight$/) do
  visit'/petinfos/new'
end

When(/^I press back$/) do
  visit'/petinfos'
end

Then(/^I should be on the Petinfo page$/) do
  visit'/petinfos'
end