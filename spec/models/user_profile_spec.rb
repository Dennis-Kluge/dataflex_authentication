require 'spec_helper'

describe UserProfile do

  let(:user_profile) do 
    create(:user_profile)
  end

  context "relationships" do
    it "belongs to an user" do
      user_profile.should respond_to :user            
    end    
  end

  context "validation" do
    it "validates the presence of a telephone number" do
      user_profile.telephone_number = nil
      user_profile.save
      user_profile.errors.keys.should include :telephone_number      
    end
  end

end
