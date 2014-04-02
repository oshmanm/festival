Festival.delete_all
User.delete_all

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

	lollapalooza = Festival.create({name: "Lollapalooza", venue_id: "4a7c4f0df964a52034ec1fe3"})
	pitchfork = Festival.create({name: "Pitchfork Music Festival", venue_id: "51e733a8498ea60ee79ed5be"})
	governors_ball = Festival.create({name: "Governor's Ball", venue_id: "51a637028bbde2b40bf69cde"})
	sasquatch = Festival.create({name: "Sasquatch!", venue_id: "4c016b0f716bc9b6d1d2bb55"})
	bonnaroo = Festival.create({name: "Bonnaroo", venue_id: "4bf6f370bb5176b0061e5bb2"})
	made_in_america = Festival.create({name: "Made in America", venue_id: "5221c25411d247cfd5d6486c"})
	movement = Festival.create({name: "Movement", venue_id: "4f8f8efdaad2da41eb311b59"})
	electric_zoo = Festival.create({name: "Electric Zoo", venue_id: "4ffe597ec593921ed70f5bff"})
	decibel = Festival.create({name: "Decibel Festival", venue_id: "5109e157e4b08236b1569e70"})
	bisco = Festival.create({name: "Camp Bisco", venue_id: "4c40831dcc410f470cb5a961"})
	sxsw = Festival.create({name: "South by Southwest", venue_id: "440da323f964a52092301fe3"})
	ultra = Festival.create({name: "Ultra", venue_id: "513e109be4b0bfae2f75700b"})
	coachella = Festival.create({name: "Coachella", venue_id: "4bc72cc52f94d13a5b5d117f"})
	voodoo = Festival.create({name: "Voodoo", venue_id: "4bdf538289ca76b0ccb75d5e"})
	jazz_fest = Festival.create({name: "Jazz Fest", venue_id: "4bc40188920eb71357491e2c"})
	hangout = Festival.create({name: "Hangout Music Fest", venue_id: "5193c312498e0bb7ef3d3912"})


	# user_admin = User.create({email: "test@test.com", name: "admin", password: "password",
 #                          password_confirmation: "password", is_admin: true})

	user_mike = User.create([{ name: 'Michael Oshman', email: 'michael.oshman@gmail.com', password: "password", password_confirmation: "password"}])