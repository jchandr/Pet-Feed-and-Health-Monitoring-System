require 'spec_helper'
require 'rails_helper'

RSpec.feature 'As a User, I want to Enter data' do
  scenario "Adding new data" do
      visit '/petinfos'
  expect(page).to have_content("New")
  end

  scenario "Adding food value" do
      visit '/petinfos'
  expect(page).to have_content("Food weight")
  end

  scenario "Adding water volume" do
      visit '/petinfos'
  expect(page).to have_content("Water volume")
  end

  scenario "Adding pet weight" do
      visit '/petinfos'
  expect(page).to have_content("Pet weight")
  end
    
   
  end