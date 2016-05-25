require 'spec_helper'
require 'rails_helper'

describe UsersController , :type => :controller do
    #it 'should create user successfully' do
    #  post :create, user: { name: 'Ankush', email: 'aarora3@binghamton.edu', password: 'arora' }
    #  expect(response).to redirect_to users_path
    #end
    
    it 'should update user successfully' do
      post :create, user: { name: 'dhilip', email: 'dsivara1@binghamton.edu', password: 'dhi' }
      patch :update,  id: '1', user: {  password: 'dhil'}
      expect(response).to redirect_to users_path
    end
    
    #it 'should destroy user successfully' do
    #  post :create, user: { name: 'Ankush', email: 'aarora3@binghamton.edu', password: 'arora' }
    #  delete :destroy, id: '1'
    #  expect(response).to redirect_to users_path
    #end    
end