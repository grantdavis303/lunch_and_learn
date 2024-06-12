# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.create(
  name: 'Grant',
  email: 'grantlovesturing@gmail.com',
  api_key: 'a1b2c3d4e5f6',
  password: 'supersecurepassword7',
  password_confirmation: 'supersecurepassword7'
)

User.create(
  name: 'Grant 2',
  email: 'grantlovesturing2@gmail.com',
  api_key: 'a1b2c3d4e5f6g7h8i9',
  password: 'supersecurepassword7',
  password_confirmation: 'supersecurepassword7'
)

puts "Users Created"