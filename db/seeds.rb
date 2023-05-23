# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning the db..."
Task.destroy_all

puts "Creating 20 tasks..."

20.times do
  task = Task.create(
    title: "#{Faker::Hacker.verb} #{Faker::Hacker.noun}",
    details: Faker::Hacker.say_something_smart,
    completed: [true, false][rand(0..1)]
  )
  puts "Task with id #{task.id} was created"
end

puts "All done!"
