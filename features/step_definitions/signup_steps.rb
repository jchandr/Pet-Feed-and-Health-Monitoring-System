When(/^I am on Petnanny welcome page$/) do
  visit '/'
end

Then(/^I should be on the Sign Up page$/) do
  visit '/users/new'
end

When(/^I am on the Sign Up page$/) do
  visit '/users/new'
end

