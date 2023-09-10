#User.destroy_all
# Create an admin user
admin_user = User.create(
  user_name: 'sharon_username',
  email: 'sharon@example.com',
  password: 'password1',
  admin: true
)

# Create the second admin user
admin_user2 = User.create(
  user_name: 'cynthia_username',
  email: 'cynthia@example.com',
  password: 'password2',
  admin: true
)


puts 'Admin user created.'


