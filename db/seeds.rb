# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# # roles = ['teacher', 'ta', 'student']
# Trip.create(
#   address_id: address.id,
#   location_id: location.id
# )

5.times do
  trip = Trip.create(
    name: Faker::Name.name,
    start_date: Faker::Date.in_date_period,
    end_date: Faker::Date.in_date_period
  )

5.times do
  location = Location.create(
    name: Faker::Address.city,
    days: Faker::Number.between(from: 1, to: 10),
    trip_id: trip.id
  )

  1.times do
    address = Address.create(
      street: Faker::Address.street_address,
      city: Faker::Address.city,
      state: Faker::Address.state,
      zip: Faker::Address.zip,
      location_id: location.id
    )
  end
  end
end
puts 'data seeded'

