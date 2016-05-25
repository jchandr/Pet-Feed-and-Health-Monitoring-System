require 'spec_helper'
require 'rails_helper'

RSpec.describe PetinfosController, type: :routing do
  describe "routing" do
    it "routes to #welcome" do
      expect(:get => "/").to route_to("users#index") 
    end
  end
end

RSpec.feature 'Listing Petinfos' do
  scenario "Listing Petinfos" do
    visit petinfos_path
    expect(page).to have_content("Listing Petinfos")
  end
end

RSpec.feature 'Listing Petinfos' do
    scenario "Specific Records" do
        visit petinfos_path
        expect(page).to have_content("Food weight")
    end
end

RSpec.feature 'Listing Petinfos' do
    scenario "Negative Records" do
        visit petinfos_path
        expect(page).to have_content("")
    end
end

RSpec.feature 'Listing Petinfos' do
    scenario "delete" do
        visit petinfos_path
        expect(page).to have_content("Id")
    end
end