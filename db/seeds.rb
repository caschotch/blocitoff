require 'faker'

10.times do
  User.create!(
  email: Faker::Internet.email,
  password: Faker::Internet.password(8,16)
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
