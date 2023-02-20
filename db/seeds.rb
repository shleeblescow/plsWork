# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "seed some data bitch"

u1 = Runner.create(
    username: "SOM1000",
    password: "123",
    name: "Pa",
    age: 61,
    neighborhood: "anacortes",
    bio: "why run when you can drive a crash box",
    running_deets: "whatever works best"
)

puts "thats all you get stoopid"