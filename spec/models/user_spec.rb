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
    user_empty_field = FactoryGirl.build(:user, username: nil)
    expect(user_empty_field).to be_invalid
  end

  it "is invalid if username is not unique" do
    user2  = FactoryGirl.build(:user, username: "bob")
    user3  = FactoryGirl.build(:user, username: "Bob")
    expect(user2).to be_invalid
    expect(user3).to be_invalid
  end

  it "is invalid if username is less than 3 letters" do
    user_shortname = FactoryGirl.build(:user, username: 'al')
    expect(user_shortname).to be_invalid
  end

  it "is invalid without an email" do
    user_empty_field = FactoryGirl.build(:user, email: nil)
    expect(user_empty_field).to be_invalid
  end

  it "is invalid without a unique email" do
    user = FactoryGirl.build(:user, email: 'test@test.com')
    user1 = FactoryGirl.build(:user, email: 'Test@test.com')
    expect(user).to be_invalid
    expect(user1).to be_invalid
  end

  it "is invalid without a properly formatted email" do
    user_bad_email = FactoryGirl.build(:user, email: 'yaddayadda')
    expect(user_bad_email).to be_invalid
  end

  it "is invalid without a password" do
    user_empty_field = FactoryGirl.build(:user, password: nil)
    expect(user_empty_field).to be_invalid
  end

end
