class Credit < ApplicationRecord
  belongs_to :lender, class_name: 'User', foreign_key: 'lender_id'
  belongs_to :borrower, class_name: 'User', foreign_key: 'borrower_id'

  after_save :add_users_amounts
  before_update :remove_old_users_amount

  validates_presence_of :amount, :lender, :borrower

  def add_users_amounts
    borrower.update_attribute(:borrow_sum, borrower.borrow_sum + amount)
    lender.update_attribute(:lend_sum, lender.lend_sum + amount)
  end

  def remove_old_users_amount
    borrower.update_attribute(:borrow_sum, borrower.borrow_sum - amount_was)
    lender.update_attribute(:lend_sum, lender.lend_sum - amount_was)
  end
end
