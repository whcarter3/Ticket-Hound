require 'rails_helper'

describe Wishlist do
  it {should belong_to(:user)}
  it {should belong_to(:concert)}
end
