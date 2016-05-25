Given(/^the following petinfos exist:$/) do |petinfos_table|
  petinfos_table.hashes.each do |petinfo|
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that house to the database here.
  Petinfo.create!(petinfo)
  end
end

When(/^I am on the edit page for "([^"]*)"$/) do |arg1|
  value = 9
  arg1 == value
end
  

Then(/^I should be on the Edit Petinfo Listings page$/) do
    Id = 9
  visit 'petinfo/Id/edit'
end

Then(/^I should be on the Petinfo Listings page$/) do
  visit 'petinfos'
end