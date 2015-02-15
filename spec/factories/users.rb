FactoryGirl.define do
  factory :user do
    username              "testuser"
    email                 "test@test.com"
    password              "password"
    password_confirmation "password"
  end
end