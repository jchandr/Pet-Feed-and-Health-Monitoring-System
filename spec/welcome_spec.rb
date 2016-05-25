require 'spec_helper'
require 'rails_helper'

RSpec.feature 'As a user,I want to see the pet nanny welcome page' do
  scenario "To see welcome page" do
    visit '/'
    expect(page).to have_content("PET FEEDING AND HEALTH MONITORING SYSTEM")
 end
 
 end
 
RSpec.feature 'As a user,I want to be in the home page to login or signup' do
  scenario "To see login or signup" do
    visit '/'
    expect(page).to have_content("Home")
 end
 
 scenario "To login" do
      visit '/'
  expect(page).to have_content("Login")
  end
  
  scenario "To signup" do
      visit '/'
  expect(page).to have_content("Sign Up")
  end
  
 end