require 'rails_helper'

RSpec.describe User, :type => :model do
  user = FactoryGirl.build(:user)
   
  it "responds to user username" do
  	expect(user).to respond_to (:username)
  end
  
  it "responds to user email" do
  	expect(user).to respond_to (:email)
  end

  it "responds to user email" do
  	expect(user).to respond_to (:password)
  end

  it "is invalid without a username" do
    no_username = FactoryGirl.build(:user, username: nil)
    expect(no_username).to be_invalid
  end

  it "is invalid without an email" do
    no_username = FactoryGirl.build(:user, email: nil)
    expect(no_username).to be_invalid
  end

  it "is invalid without a password" do
    no_username = FactoryGirl.build(:user, password: nil)
    expect(no_username).to be_invalid
  end
end
