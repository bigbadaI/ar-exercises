require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
Store.has_many :employees
Employee.belongs_to :store

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Frank", last_name: "Gal", hourly_rate: 45)
@store2.employees.create(first_name: "Bruce", last_name: "Wayne", hourly_rate: 100)
@store2.employees.create(first_name: "Alfred", last_name: "Pennyworth", hourly_rate: 60)
@store4.employees.create(first_name: "Tony", last_name: "Stark", hourly_rate: 150)
@store4.employees.create(first_name: "Pepper", last_name: "Pots", hourly_rate: 60)
@store5.employees.create(first_name: "Arthur", last_name: "Virani", hourly_rate: 50)
@store5.employees.create(first_name: "Benny", last_name: "Virani", hourly_rate: 60)
@store5.employees.create(first_name: "Jules", last_name: "Virani", hourly_rate: 65)
@store6.employees.create(first_name: "Kirk", last_name: "Coban", hourly_rate: 60)
@store6.employees.create(first_name: "Garth", last_name: "Brooks", hourly_rate: 60)
@store6.employees.create(first_name: "Brooks", last_name: "Dun", hourly_rate: 75)
