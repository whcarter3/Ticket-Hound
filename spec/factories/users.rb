FactoryGirl.define do
  factory :user do |t|
    username              (Faker::Internet.user_name)
    email                 (Faker::Internet.email)
    password              (Faker::Internet.password(8, 24))
  end
end