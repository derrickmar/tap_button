# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


david = User.create(name:'David', email:'davidbliu@gmail.com',gcm_id: 'APA91bH3MNqgXgzDZmW8lGcliMIWSE-YApTyOJXDoxfDQdL1EBn84a1mUlBYM0h6aJ2g0BhiPPwhntFb981Bfcgfxq5raF40HkkTfCSnzZrWlo356U0R1w7hlEx-C6r7_gErEJ6sMF6oiNI_lU_uS3efDFPxhpWbQw')
sophia = User.create(name:'Sophia', email:'sophia@gmail.com',gcm_id:'APA91bGx6P-1iCSG3JWbMS0LDq0T0QLpQIi5h2KpOxe2Q4XVx9POnkXOe1lwcXUyOu-tf4n8rqboO0Aan8FoYnF7UGPFgRHyrRmv6cnTF4v-NxmlIT8lbXJUJHgbxTli7SgtLLMqR9jDM3maPhs7x2hQdEq96KyQfw')
cady = User.create(name:'Cady', email:'cady@gmail.com')
derrick = User.create(name:'Derrick', email:'derrick@gmail.com')
andre = User.create(name:'Andre',email:'andre@gmail.com')

# davids friends
Group.create(user_1: david.id, user_2: sophia.id, user_3: cady.id)

p1 = Patient.create(name:'Tsehay', image:'https://d3w52z135jkm97.cloudfront.net/uploads/profile/photo/7893/profile_330x248_f11fdb84-0325-4afd-99bd-f828fabf206f.JPG',desc:'Tsehay is overcoming a birth defect called an anorectal malformation')
p2 = Patient.create(name:'Joseph', image:'https://d3w52z135jkm97.cloudfront.net/uploads/profile/photo/7895/profile_330x248_2b22e76c-55f3-42d6-a621-8a8431020d13.JPG',desc: 'Joseph will now be able to treat his infected bone')
p3 = Patient.create(name:'Dominic',image:'https://d3w52z135jkm97.cloudfront.net/uploads/profile/photo/7894/profile_330x248_e1b91d72-dc5f-4e9e-9d59-bbf0db673546.JPG',desc: 'Dominic will be able to treat a painful scrotal swelling')
Patient.create(name:'Bharat', image:'https://d3w52z135jkm97.cloudfront.net/uploads/profile/photo/7867/profile_330x248_ce6294e5-8214-4040-8046-6e497842d703.jpg',desc: 'Bharat is having an implant removed from his leg')
Patient.create(name:'Jose',image:'https://d3w52z135jkm97.cloudfront.net/uploads/profile/photo/7869/profile_330x248_dcbfb5fa-75ca-47b8-9190-0f0645cf599b.JPG',desc: 'Jose will be able to remove a goiter')
Patient.create(name:'Evelyn',image:'https://d3w52z135jkm97.cloudfront.net/uploads/profile/photo/7883/profile_330x248_c23356c3-c245-464c-af2d-ea9e208cfd85.JPG',desc: 'Evelyn will receive a life-changing malnourishment treatment')
Patient.create(name:'Kioko',image:'https://d3w52z135jkm97.cloudfront.net/uploads/profile/photo/7897/profile_638x479_cee62d53-3273-4238-8d02-1a98e4787aa5.JPG',desc: 'Kiono will be able to walk after suffering a broken leg')
Patient.create(name:'Maria',image:'https://d3w52z135jkm97.cloudfront.net/uploads/profile/photo/7851/profile_330x248_58acf5c2-d814-4405-86d0-5ed609c1b508.jpg',desc:'Marias spinal and foot condition will receive treatment')

Tap.create(user_id: david.id, patient_id: p1.id, score: 8.901, remote_avatar_url: "https://scontent-sjc2-1.xx.fbcdn.net/hphotos-xaf1/v/t1.0-9/11888049_10207468202732396_4620339504208703819_n.jpg?oh=1f34ab80be2b69570bc6ed5001b5330b&oe=5776F76D")
Tap.create(user_id: sophia.id, patient_id: p2.id, score: 9.301, remote_avatar_url: "https://scontent-sjc2-1.xx.fbcdn.net/hphotos-xaf1/v/t1.0-9/12107030_569285726568954_102744850881732807_n.jpg?oh=bc75e795d63589495d785a08977bb9b8&oe=578A6D48")
Tap.create(user_id: cady.id, patient_id: p3.id, score: 9.901, remote_avatar_url: "https://scontent-sjc2-1.xx.fbcdn.net/hphotos-xaf1/v/t1.0-9/11082438_621558757943978_5579136533757387259_n.jpg?oh=ae2262341951c47089c4d168644f0ea5&oe=5780B3B9")

