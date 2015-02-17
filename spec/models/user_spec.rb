require 'rails_helper'

describe User do
  it {should have_many(:wishlists).dependent(:destroy)}
  it {should have_many(:concerts).through(:wishlists)}
  it {should allow_mass_assignment_of(:username)}
  it {should allow_mass_assignment_of(:email)}
  it {should allow_mass_assignment_of(:password)}
  it {should allow_value('will@test.com').for(:email)}
  it {should_not allow_value('will@').for(:email)}
  it {should ensure_length_of(:password).is_at_least(8).is_at_most(24)}
  it {should ensure_length_of(:username).is_at_least(3).is_at_most(24)}
  it {should have_secure_password}
  it {should validate_confirmation_of(:password)}
  it {should validate_presence_of(:username)}
  it {should validate_presence_of(:email)}
  it {should validate_presence_of(:password)}
  it {should validate_uniqueness_of(:username)}
  it {should validate_uniqueness_of(:email)}
  it {should validate_confirmation_of(:password)}
end
