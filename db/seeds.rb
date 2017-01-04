# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do
	fname = Faker::Name.first_name
	lname = Faker::Name.last_name
	street_address = Faker::Address.street_address
	city = Faker::Address.city
	email = Faker::Internet.email
	
User.create(fname: fname, lname: lname, address: "#{street_address}, #{city}", email: email, password: "password1")
end


20.times do
	food = Faker::Food.ingredient

Product.create(description: food)	

end

