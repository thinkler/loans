FactoryGirl.define do
  factory :credit do
    amount 300
    lender { lender }
    borrower { borrower }
  end
end
