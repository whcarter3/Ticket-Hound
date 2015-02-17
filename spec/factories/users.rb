FactoryGirl.define do
  factory :user do |t|
    username  (Faker::Internet.user_name)
    email     (Faker::Internet.email)
  end
end