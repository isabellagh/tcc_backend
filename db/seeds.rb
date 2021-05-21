# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Classroom.destroy_all
Child.destroy_all

u = User.create(name: "Isabella", email: "bella@gmail.com", password: "password")
cr = Classroom.create(room_name: "Toddler 1", age: 1, full: false, user_id: 1, teacher_name: "Edna")
c = Child.create(name: "Maggie", age: 1, avatar: "https://www.pngkit.com/png/full/41-417174_maggie-simpson-the-simpsons.png", allergies: "No", special_needs: "No", classroom_id: 1, user_id: 1)
puts "Succeeded"

