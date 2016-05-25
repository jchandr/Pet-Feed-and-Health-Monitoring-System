require 'spec_helper'
require 'rails_helper'

describe SessionsController , :type => :controller do
    describe "POST Create" do
    
      before do
        User.create(name: 'dhilip', 
                    email: 'dsivara1@binghamton.edu',
                    password: 'dhi' )
      end
      
      #it 'should login successfully only if both username and password are valid and redirect_to Homepage' do
      #  post :create, session: {email: 'aarora3@binghamton.edu', password: 'arora'}
      #  expect(response).to redirect_to root_url
      #end
  
      it 'should not login successfully if username is invalid and redirect_to to login page' do
        post :create, session: {email: 'abc@xyz.com', password: 'dhi'}
        expect(response).to redirect_to login_path
      end
      
      it 'should not login successfully if password invalid and redirect_to to login page' do
        post :create, session: {email: 'dsivara1@binghamton.edu', password: '12345'}
        expect(response).to redirect_to login_path
      end      
      
      it 'should not login successfully if both username and password are invalid  and redirect_to to login page' do
        post :create, session: {email: 'abc@xyz.com', password: '12345'}
        expect(response).to redirect_to login_path
      end            

      it 'should not login successfully if password is empty and redirect_to to login page' do
        post :create, session: {email: 'dsivara1@binghamton.edu', password: ''}
        expect(response).to redirect_to login_path
      end          
      
      it 'should not login successfully if username is empty and redirect_to to login page' do
        post :create, session: {email: '', password: 'dhi'}
        expect(response).to redirect_to login_path
      end        
    end    
    
end