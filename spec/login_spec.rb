require 'spec_helper'
require 'rails_helper'

describe UsersController , :type => :controller do
    
    describe "login" do
        # it 'it redirects to myaccount if logged in' do
        #    get :myaccount
        #    expect(response).to render_template :myaccount
        #end
        
        it "it redirects to the login page if not" do
            get :new
            expect(response).to render_template :new
        end

    end
end
