require 'rails_helper'

RSpec.describe User, type: :model do
  let(:lender) { FactoryGirl.create(:user) }
  let(:borrower) { FactoryGirl.create(:user) }

  it 'calculate user account right' do
    FactoryGirl.create(:credit, lender: lender, borrower: borrower)
    FactoryGirl.create(:credit, lender: borrower, borrower: lender)
    expect(lender.account).to eq(borrower.account)
  end
end
