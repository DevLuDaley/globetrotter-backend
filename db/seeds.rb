# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Location.create(city: "London", country: "United Kingdom", state: "London")
Location.create(city: "Harlem", country: "United States", state: "New York")

#USERS
User.create(name: "Nadia", username: "nadiaf", password_digest: "password", hometown_id: 2)
User.create(name: "Nicole", username: "Coach", password_digest: "password", hometown_id: 2)    
User.create(name: "Lu", username: "LH", password_digest: "password", hometown_id: 2)
User.create(name: "Hazel", username: "Hay-Z", password_digest: "password", hometown_id: 2)

User.first.trips.create(start_date: "2021-07-01", end_date: "2021-08-08", location_id: 2)
User.first.trips.create(start_date: "2021-8-28", end_date: "2021-09-15", location_id: 1)


nd = User.all[1]
nd.trips.create(start_date: "2021-06-01", end_date: "2021-06-08", location_id: 2)
nd.trips.create(start_date: "2021-1-15", end_date: "2021-02-08", location_id: 1)

ld = User.all[2]
ld.trips.create(start_date: "2021-04-01", end_date: "2021-06-12", location_id: 1)
ld.trips.create(start_date: "2021-3-15", end_date: "2021-02-15", location_id: 1)

 #<User id: 1, name: "Lu Programmer", username: "postgres", password_digest: "$2a$10$zB8dx8HIonrWRXeRoXn22uwBxSKLhi1J8d3.uoOXmPN...", created_at: "2020-12-02 23:34:37", updated_at: "2020-12-02 23:34:37", hometown_id: 1> 

nadia = User.first
anaheim = Location.create(city: "Anaheim", state: "California", country: "USA")
disney = anaheim.attractions.create(name: "Disneyland", description: "Happiest place on Earth!")

disneyL = Attraction.first

nadia_disney = nadia.trips.create(start_date: "2019-06-01", end_date: "2019-06-08")

nadia_disney.visits.create(attraction: disney, date: "2019-06-01")
nadia.comments.create(content: 'Fun for all', attraction: disney)

# Trip.create()