require 'faker'

10.times do
  User.create!(
  email: Faker::Internet.email,
  password: "password",
  confirmed_at: Time.now
  )
end
users = User.all

20.times do
  Item.create!(
  name: Faker::Lorem.sentence,
  user: users.sample
  )
end

items = Item.all

puts "Seeds finished"
puts "#{Item.count} Items created"
puts "#{User.count} Users created"
