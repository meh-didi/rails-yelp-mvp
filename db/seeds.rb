# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Restaurant.destroy_all
# 10.times do
#   Restaurant.create!(
#     name: Faker::Restaurant.name,
#     address: Faker::Address.city,
#     category: %w[chinese italian japanese french belgian].sample,
#     phone_number: Faker::PhoneNumber.phone_number,
#   )
# end

20.times do
  Review.create!(
    content: Faker::Restaurant.review,
    rating: rand(0..5),
    restaurant: Restaurant.find(rand(1..10))
  )
end
