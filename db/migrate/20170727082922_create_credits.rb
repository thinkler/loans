class CreateCredits < ActiveRecord::Migration[5.1]
  def change
    create_table :credits do |t|
      t.decimal :amount
      t.integer :type
      t.boolean :open, default: true
      t.boolean :confirmed, default: false
      t.integer :lender_id
      t.integer :borrower_id

      t.timestamps
    end
  end
end
