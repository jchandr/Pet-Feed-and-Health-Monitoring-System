Given(/^the following users exist:$/) do |user_table|
  # table is a Cucumber::Ast::Table
  # pending # express the regexp above with the code you wish you had
  user_table.hashes.each do |user|
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that house to the database here.
  User.create!(user)
  end
end

Given(/^I am on the Petnanny welcome page$/) do
  visit '/'
end

Then(/^I should be on the Login page$/) do
  visit '/login'
end

# When(/^I follow "([^"]*)"$/) do |link|
#   click_link(link)
# end

When(/^I go to "([^"]*)"$/) do |arg1|
  text = "Successful"
  arg1 == text
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |field, value|
  fill_in(field, :with => value)
end

When(/^I press "([^"]*)"$/) do |button|
  click_button(button)
end

Then(/^I should see "([^"]*)"$/) do |arg1|
  text = "Login Successful"
  arg1 == text
end
