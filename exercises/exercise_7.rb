require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
class Employee < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates_numericality_of :hourly_rate, :greater_than =>  40
  validates_numericality_of :hourly_rate, :less_than =>  200
  validates :belongs_to,
  presence: true
end

class Store < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 3 }
  validates_numericality_of :annual_revenue, :greater_than => 0
end

p "Please enter a store name"
ans = $stdin.gets.chomp

@storeans = Store.create(name: "#{ans}")

@storeans.errors.full_messages.each do |message| 
  p message 
end