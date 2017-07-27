FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "foo#{n}@bar.com" }
    lend_sum 0
    borrow_sum 0
    password 'foobar'
    password_confirmation 'foobar'
  end
end
