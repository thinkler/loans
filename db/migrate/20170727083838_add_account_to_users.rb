class AddAccountToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :lend_sum, :decimal, default: 0
    add_column :users, :borrow_sum, :decimal, default: 0
  end
end
