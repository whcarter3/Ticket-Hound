require 'rails_helper'

describe Concert do
  it {should have_many(:wishlists).dependent(:destroy)}
  it {should have_many(:users).through(:wishlists)}
end
