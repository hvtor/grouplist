FactoryGirl.define do
  factory :user do
    username "John123"
    sequence(:email) {|n| "user_#{n}@example.com"}
    password "12345"
  end
end