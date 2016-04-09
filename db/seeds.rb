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
Friendship.create(user_id: david.id, friend_id: sophia.id, friend_number: 1)
Friendship.create(user_id: david.id, friend_id: cady.id, friend_number: 2)

# sophias friends
Friendship.create(user_id: sophia.id, friend_id: david.id, friend_number: 1)
Friendship.create(user_id: sophia.id, friend_id: cady.id, friend_number: 2)


