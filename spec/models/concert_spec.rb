require 'rails_helper'

describe Concert do
  it {should have_many(:wishlists).dependent(:destroy)}
  it {should have_many(:users).through(:wishlists)}
  it {should allow_mass_assignment_of(:tm_concert_id)}
end
