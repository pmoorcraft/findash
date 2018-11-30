# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

first_user = User.create(email: '1@2.com', password: '123456')
second_user = User.create(email: '2@2.com', password: '123456')


first_business = first_user.businesses.create(name: "First Business")
second_business = second_user.businesses.create(name: "Second Business")
