# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Classroom.destroy_all
Child.destroy_all

infant_a = Classroom.create(room_name: "Infant A", age: 0, full: false, teacher_name: "Bitao")
infant_b = Classroom.create(room_name: "Infant B", age: 0, full: false, teacher_name: "Emma")
toddler_a = Classroom.create(room_name: "Toddler 1", age: 1, full: false, teacher_name: "Su")
toddler_a = Classroom.create(room_name: "Toddler 2", age: 2, full: false, teacher_name: "Caroline")

c1 = Child.create(name: "Rapunzel", age: 0, avatar: "https://ohmy.disney.com/wp-content/uploads/2013/07/royal_rapunzel_tangled.jpg", allergies: "No", special_needs: "No", classroom_id: 1)
c2 = Child.create(name: "Maggie", age: 0, avatar: "https://www.pngkit.com/png/full/41-417174_maggie-simpson-the-simpsons.png", allergies: "No", special_needs: "No", classroom_id: 2)
c3 = Child.create(name: "Tiana", age: 1, avatar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrVO5vvitygpju_3Y8QbXMIx1CPs8qwM7N9A&usqp=CAU", allergies: "No", special_needs: "No", classroom_id: 3)

puts "Succeeded"

