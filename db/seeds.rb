15.times do
 Elephant.create!(name: Faker::Name.name, age:Faker::Number.number(2), height: Faker::Number.between(3))
end

5.times do
 User.create!(
 	name: Faker::Internet.email, 
 	password:Faker::Code.imei, 
 	last_login: Faker::Time.between(DateTime.now - 1, DateTime.now))
end
User.create!(
name: "isuru", 
password:"password", 
last_login: Faker::Time.between(DateTime.now - 1, DateTime.now))

elephant_ids=Elephant.ids
user_ids=User.ids
100.times do
 Location.create!(
 	date: Faker::Time.between(DateTime.now - 1, DateTime.now), 
 	latitude:Faker::Number.decimal(2, 6), 
 	longitude: Faker::Number.decimal(2, 6),
 	elephant_id:elephant_ids.sample,
 	user_id:user_ids.sample)
end