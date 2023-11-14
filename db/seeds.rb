# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.create!(name: 'Nabil Hayet', email: 'xyz@yahoo.com', address: '23 penn st', contact: '123-456-789')
Booking.create!(date: '2023-08-29' , time: '06:45:50' , table_num: 1, user_id: 1)
