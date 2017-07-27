class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :rememberable, :validatable

  has_many :lends, class_name: 'Credit', foreign_key: 'lender_id'
  has_many :borrows, class_name: 'Credit', foreign_key: 'borrower_id'

  def account
    lend_sum - borrow_sum
  end
end
