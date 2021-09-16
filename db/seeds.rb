# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#  movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: 'j@gmail.com', username: 'Jess', password: 'hi')
User.create(email: 'bill@gmail.com', username: 'Bill', password: 'hi')

Trip.create(location: 'Denver', date: 'Aug 2021', user: User.first)
Trip.create(location: 'LA', date: 'Aug 2020', user: User.first)

Trip.create(location: 'New York', date: 'May 2018', user: User[1])