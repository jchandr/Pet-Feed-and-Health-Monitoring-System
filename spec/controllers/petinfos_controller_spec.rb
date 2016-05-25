require 'spec_helper'
require 'rails_helper'

describe PetinfosController,:type => :controller do
    
  it 'should create pet history successfully' do
    post :create, petinfo: {pet_weight: '999', food_weight: '999', water_volume: '999'}
    expect(response).to redirect_to '/petinfos/1'
  end
    
  describe '#pet_weight' do
  
    it 'should have pet weight' do
      record = Petinfo.new
      record.pet_weight = '' # invalid state
      record.valid? # run validations
    #   record.errors[:pet_weight].should include("can't be blank") # check for presence of error

      record.pet_weight = '999' # invalid state
      record.valid? # run validations
    #   record.errors[:pet_weight].should include("can't be blank") # check for presence of error
    end
    
  end
  
  describe '#food_weight' do
  
    it 'should have food weight' do
      record = Petinfo.new
      record.food_weight = '' # invalid state
      record.valid? # run validations
    #   record.errors[:food_weight].should include("can't be blank") # check for presence of error

      record.food_weight = '999' # invalid state
      record.valid? # run validations
    #   record.errors[:food_weight].should include("can't be blank") # check for presence of error
    end

  end


    
end