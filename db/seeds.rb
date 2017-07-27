User.delete_all

User.create(email: 'admin@admin.com',
            password: 'foobar',
            password_confirmation: 'foobar')
