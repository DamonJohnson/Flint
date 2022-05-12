# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


Item.destroy_all
User.destroy_all
Category.destroy_all
Profile.destroy_all


christine = User.create(email: 'christine@email.com', password: 'password')
fiona = User.create(email: 'fiona@email.com', password: 'password')
randal= User.create(email: 'randal@email.com', password: 'password')
greg = User.create(email: 'greg@email.com', password: 'password')

Profile.create(user_id: User.first.id, first_name: 'christine', last_name: 'jones', address: "98 Chickiba Drive", city: 'East Ballina', postcode: 2478, state: 'New South Wales')
Profile.create(user_id: User.second.id, first_name: 'fiona', last_name: 'bakhteyari', address: "67 Baroona Road", city: 'Milton', postcode: 4067, state: 'Queensland')
Profile.create(user_id: User.third.id, first_name: 'randal', last_name: 'johnson', address: "123 Foo Street", city: 'Brisbane', postcode: 4000, state: 'Queensland')
Profile.create(user_id: User.last.id, first_name: 'greg', last_name: 'simpson', address: "4 Collins Street", city: 'Docklands', postcode: 3005, state: 'Victoria')






categories = Category.create([{name: "4WDs"},{name: "Campervans"},{name: "Caravans"},{name: "Kayaks and Canoes"},{name: "Boats"},{name: "Camping Equipment"},{name: "Surf"},{name: "Snow"}])

canoe = Item.create(title: "Two person canoe", description: "A ten foot traditional canadian canoe with room for two people and gear storage in the middle. Comes with two paddles.", price: 59.00, category_id: Category.first.id, user_id: User.first.id)
Item.create(title: "Landrover Defender", description: "A 2017 troop carrier land rover defender - manual 4x4, 4 cylinder 2.2L turbo diesel.", price: 145.00, category_id: Category.find_by(name: "4WDs").id, user_id: User.second.id)
tent = Item.create(title: "Denali single person hiking tent", description: "A rarely used light weight hiking tent. Weight is 2.5kg", price: 30.00, category_id: Category.find_by(name: "Camping Equipment").id, user_id: User.last.id)
paddleboard = Item.create(title: "Standup paddleboard", description: "A twelve foot epoxy paddleboard. Come with paddle.", price: 72.00, category_id: Category.find_by(name: "Surf").id, user_id: User.third.id)
Item.create(title: 'Foo', description: 'Bar', price: 100.00, category_id: Category.first.id, user_id: User.last.id)