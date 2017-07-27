User.delete_all
Credit.delete_all

# lender
User.create(email: 'admin@admin.com',
            password: 'foobar',
            password_confirmation: 'foobar')

# borrower
User.create(email: 'borrower@borrower.com',
            password: 'foobar',
            password_confirmation: 'foobar')
