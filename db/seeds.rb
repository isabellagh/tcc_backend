# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cr = Classroom.create(room_name: "Toddler 1", age: 1, full: false)
t = Teacher.create(name: "Edna", age: 35, image: "https://upload.wikimedia.org/wikipedia/en/thumb/7/76/Edna_Krabappel.png/220px-Edna_Krabappel.png", classroom_id: 1)
c = Child.create(name: "Meggie", age: 1, avatar: "https://www.pngkit.com/png/full/41-417174_maggie-simpson-the-simpsons.png", allergies: false, special_needs: false, classroom_id: 1, teacher_id: 1)
puts "Succeeded"

