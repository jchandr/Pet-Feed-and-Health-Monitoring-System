require 'spec_helper'
require 'rails_helper'

RSpec.feature 'As a User, I want to signup.' do
  scenario "Go to signup page" do
    visit '/users/new'
    expect(page).to have_content("Name")
    end
    
  scenario "Go to signup page" do
    visit '/users/new'
    expect(page).to have_content("Email")
    end

  scenario "Go to signup page" do
    visit '/users/new'
    expect(page).to have_content("Password")
    end
    
  scenario "Go to signup page" do
    visit '/users/new'
    expect(page).to have_content("Passwordconfirmation")
    end
    

end