# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'ffaker'

Item.destroy_all
User.destroy_all

User.create!({
  name: '田中 太郎',
  email: 'test@user.com',
  password: 'test123',
  password_confirmation: 'test123'
})

User.create!({
  name: '山田 花子',
  email: 'test2@user.com',
  password: 'test123',
  # password_confirmation: 'test123'
})

# 10.times do
#   Item.create!(
#     name: FFaker::Lorem.sentence,
#     description: FFaker::Lorem.paragraphs.join(' ')
#   )
# end