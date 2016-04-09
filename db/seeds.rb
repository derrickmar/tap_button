# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


david = User.create(name:'David', email:'davidbliu@gmail.com')
sophia = User.create(name:'Sophia', email:'sophia@gmail.com')
cady = User.create(name:'Cady', email:'cady@gmail.com')
derrick = User.create(name:'Derrick', email:'derrick@gmail.com')
andre = User.create(name:'Andre',email:'andre@gmail.com')

# davids friends
Group.create(user_1: david.id, user_2: sophia.id, user_3: cady.id)