require 'spec_helper'
require 'rails_helper'

RSpec.feature 'As a owner,I want to see the activity and health of my pet.' do
  scenario "check on the activities" do
    visit petinfos_path
    expect(page).to have_content("Timestamp")
 end
end