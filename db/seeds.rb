# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

	lollapalooza = Festival.create({name: "Lollapalooza"})
	pitchfork = Festival.create({name: "Pitchfork Music Festival"})
	governors_ball = Festival.create({name: "Governor's Ball"})
	sasquatch = Festival.create({name: "Sasquatch!"})
	bonnaroo = Festival.create({name: "Bonnaroo"})
	made_in_america = Festival.create({name: "Made in America"})
	movement = Festival.create({name: "Movement"})
	electric_zoo = Festival.create({name: "Electric Zoo"})
	decibel = Festival.create({name: "Decibel Festival"})
	bisco = Festival.create({name: "Camp Bisco"})
	sxsw = Festival.create({name: "South by Southwest"})
	ultra = Festival.create({name: "Ultra"})
	coachella = Festival.create({name: "Coachella"})
	voodoo = Festival.create({name: "Voodoo"})
	jazz_fest = Festival.create({name: "Jazz Fest"})
	hangout = Festival.create({name: "Hangout Music Fest"})


	user_admin = User.create({email: "test@test.com", name: "admin", password: "password",
                          password_confirmation: "password", is_admin: true})

	user_mike = User.create([{ name: 'Michael Oshman', email: 'michael.oshman@gmail.com', password: "password", password_confirmation: "password"}])