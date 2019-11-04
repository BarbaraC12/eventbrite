# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
​
User.destroy_all
Event.destroy_all
Attendance.destroy_all
​
ActiveRecord::Base.connection.reset_pk_sequence!('users')
ActiveRecord::Base.connection.reset_pk_sequence!('events')
ActiveRecord::Base.connection.reset_pk_sequence!('attendances')
​
n=0
​
users =[]
    
    5.times do 
        
        n+=1 
        users << User.create(
            email: "ducon#{n}@yopmail.com",
            encrypted_password: "caca",
            description: Faker::TvShows::DrWho.catch_phrase ,
            first_name: Faker::GreekPhilosophers.name , 
            last_name: Faker::TvShows::DrWho.specie  )
        
    end
