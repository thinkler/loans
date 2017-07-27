require 'rails_helper'

RSpec.describe Credit, type: :model do
  let(:lender) { FactoryGirl.create(:user) }
  let(:borrower) { FactoryGirl.create(:user) }

  it 'add user account after saving credit' do
    expect(lender.lend_sum).to eq 0
    expect(borrower.borrow_sum).to eq 0
    FactoryGirl.create(:credit, lender: lender, borrower: borrower)
    expect(lender.lend_sum).to eq(300)
    expect(borrower.borrow_sum).to eq(300)
  end

  it 'update user account after updating credit' do
    credit = FactoryGirl.create(:credit, lender: lender, borrower: borrower)
    expect(lender.lend_sum).to eq(300)
    expect(borrower.borrow_sum).to eq(300)
    credit.update(amount: 600)
    expect(lender.lend_sum).to eq(600)
    expect(borrower.borrow_sum).to eq(600)
  end
end
